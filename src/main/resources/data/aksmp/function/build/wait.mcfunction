execute unless score #bp ak.cfg matches 1.. run title @a actionbar {"translate":"aksmp.t.a7ea572f","fallback":"AK SMP: 주변 지형을 불러오는 중입니다... 잠시만 기다려 주세요","color":"gold"}
execute if score #bp ak.cfg matches 1.. run title @a actionbar [{"translate":"aksmp.t.78ee7855","fallback":"AK SMP 스폰 허브 건설 중  ","color":"gold"},{"score":{"name":"#bp","objective":"ak.cfg"},"color":"yellow"},{"text":" / 111","color":"gold"}]
effect give @a minecraft:slow_falling 3 0 true
effect give @a minecraft:resistance 3 4 true
