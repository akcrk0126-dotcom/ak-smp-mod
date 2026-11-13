#!/usr/bin/env bash
# Starts a real Fabric 26.3 dedicated server with the built mod + Fabric API, waits for the hub to be built, runs a few commands, checks the log.
set -u
MC=26.3
LOADER=$(grep '^loader_version=' gradle.properties | cut -d= -f2)
FAPI=$(grep '^fabric_api_version=' gradle.properties | cut -d= -f2)
INST=$(curl -s https://meta.fabricmc.net/v2/versions/installer | python3 -c 'import json,sys; print([v["version"] for v in json.load(sys.stdin) if v["stable"]][0])')
mkdir -p srv/mods
curl -sSL -o srv/server.jar "https://meta.fabricmc.net/v2/versions/loader/$MC/$LOADER/$INST/server/jar"
curl -sSL -o fabric-api.jar "https://maven.fabricmc.net/net/fabricmc/fabric-api/fabric-api/${FAPI}/fabric-api-${FAPI}.jar"
cp fabric-api.jar srv/mods/
cp $(ls build/libs/ak-smp-*.jar | grep -v sources) srv/mods/
ls -la srv/mods
cd srv
echo "eula=true" > eula.txt
printf "online-mode=false\nlevel-seed=20261113\nspawn-protection=0\n" > server.properties
mkfifo cmd
exec 3<>cmd
java -Xmx3G -jar server.jar nogui <&3 > ../server.log 2>&1 &
PID=$!
say() { echo "$1" >&3; echo ">> $1"; }
for i in $(seq 1 120); do grep -q 'Done (' ../server.log && break; kill -0 $PID 2>/dev/null || break; sleep 5; done
grep -q 'Done (' ../server.log || { echo "SERVER DID NOT START"; tail -150 ../server.log; exit 1; }
say "datapack list enabled"
for i in $(seq 1 60); do
  say "scoreboard players get #built ak.cfg"; sleep 10
  grep -q '#built has 1 ' ../server.log && break
done
say "scoreboard players get #bp ak.cfg"
say "setblock 0 -60 0 aksmp:deepslate_argonite_ore"
say "execute if block 0 -60 0 aksmp:deepslate_argonite_ore run say ORE_OK"
say "function aksmp:argonite/sec"
say "say SMOKE_END"
sleep 15
say "stop"
for i in $(seq 1 60); do kill -0 $PID 2>/dev/null || break; sleep 2; done
kill $PID 2>/dev/null
cd ..
echo "================ relevant log lines ================"
grep -n -i -E 'aksmp|error|exception|failed|couldn|unknown|#built|ORE_OK|SMOKE_END|datapack|Done \(' server.log | grep -v -i 'Failed to send' | head -300
FAIL=0
grep -q -E 'Failed to load function|Couldn.t load|Unknown function|Exception' server.log && { echo "::error::load errors in server.log"; FAIL=1; }
grep -q '#built has 1 ' server.log || { echo "::error::hub was not built"; FAIL=1; }
grep -q 'ORE_OK' server.log || { echo "::error::argonite ore block missing"; FAIL=1; }
exit $FAIL
