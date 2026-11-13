execute if entity @e[type=minecraft:interaction,tag=ak.i.rtp,distance=..0.1] run function aksmp:t/rtp
execute if entity @e[type=minecraft:interaction,tag=ak.i.arena,distance=..0.1] run dialog show @s aksmp:arena
execute if entity @e[type=minecraft:interaction,tag=ak.i.auc,distance=..0.1] run function aksmp:click/auc
execute if entity @e[type=minecraft:interaction,tag=ak.i.shop,distance=..0.1] run dialog show @s aksmp:shop
execute if entity @e[type=minecraft:interaction,tag=ak.i.gacha,distance=..0.1] run function aksmp:t/gacha
execute if entity @e[type=minecraft:interaction,tag=ak.i.forge,distance=..0.1] run dialog show @s aksmp:forge
execute if entity @e[type=minecraft:interaction,tag=ak.i.jobs,distance=..0.1] run dialog show @s aksmp:jobs
execute if entity @e[type=minecraft:interaction,tag=ak.i.crate,distance=..0.1] run dialog show @s aksmp:crates
execute if entity @e[type=minecraft:interaction,tag=ak.g0,distance=..0.1] run tp @s 31 ~14 0 90 0
execute if entity @e[type=minecraft:interaction,tag=ak.g1,distance=..0.1] run tp @s 0 ~14 31 180 0
execute if entity @e[type=minecraft:interaction,tag=ak.g2,distance=..0.1] run tp @s -31 ~14 0 -90 0
execute if entity @e[type=minecraft:interaction,tag=ak.g3,distance=..0.1] run tp @s 0 ~14 -31 0 0
execute if entity @e[type=minecraft:interaction,tag=ak.i.plot,tag=ak.p1,distance=..0.1] run function aksmp:plot/info {p:1}
execute if entity @e[type=minecraft:interaction,tag=ak.i.plot,tag=ak.p2,distance=..0.1] run function aksmp:plot/info {p:2}
execute if entity @e[type=minecraft:interaction,tag=ak.i.plot,tag=ak.p3,distance=..0.1] run function aksmp:plot/info {p:3}
execute if entity @e[type=minecraft:interaction,tag=ak.i.plot,tag=ak.p4,distance=..0.1] run function aksmp:plot/info {p:4}
execute if entity @e[type=minecraft:interaction,tag=ak.i.plot,tag=ak.p5,distance=..0.1] run function aksmp:plot/info {p:5}
execute if entity @e[type=minecraft:interaction,tag=ak.i.plot,tag=ak.p6,distance=..0.1] run function aksmp:plot/info {p:6}
execute if entity @e[type=minecraft:interaction,tag=ak.i.plot,tag=ak.p7,distance=..0.1] run function aksmp:plot/info {p:7}
execute if entity @e[type=minecraft:interaction,tag=ak.i.plot,tag=ak.p8,distance=..0.1] run function aksmp:plot/info {p:8}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s1,distance=..0.1] run function aksmp:plot/vclick {k:1,p:1}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s2,distance=..0.1] run function aksmp:plot/vclick {k:2,p:1}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s3,distance=..0.1] run function aksmp:plot/vclick {k:3,p:2}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s4,distance=..0.1] run function aksmp:plot/vclick {k:4,p:2}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s5,distance=..0.1] run function aksmp:plot/vclick {k:5,p:3}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s6,distance=..0.1] run function aksmp:plot/vclick {k:6,p:3}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s7,distance=..0.1] run function aksmp:plot/vclick {k:7,p:4}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s8,distance=..0.1] run function aksmp:plot/vclick {k:8,p:4}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s9,distance=..0.1] run function aksmp:plot/vclick {k:9,p:5}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s10,distance=..0.1] run function aksmp:plot/vclick {k:10,p:5}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s11,distance=..0.1] run function aksmp:plot/vclick {k:11,p:6}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s12,distance=..0.1] run function aksmp:plot/vclick {k:12,p:6}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s13,distance=..0.1] run function aksmp:plot/vclick {k:13,p:7}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s14,distance=..0.1] run function aksmp:plot/vclick {k:14,p:7}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s15,distance=..0.1] run function aksmp:plot/vclick {k:15,p:8}
execute if entity @e[type=minecraft:interaction,tag=ak.i.vend,tag=ak.s16,distance=..0.1] run function aksmp:plot/vclick {k:16,p:8}
execute as @e[type=minecraft:interaction,tag=ak.i,distance=..0.1] run data remove entity @s interaction
