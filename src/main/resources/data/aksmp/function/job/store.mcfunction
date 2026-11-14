$data modify storage aksmp:jobs j$(k) set from storage aksmp:tmp j
$data modify storage aksmp:jobs j$(k).name set from storage aksmp:names p$(owner)
$scoreboard players set #j$(k) ak.jleft $(left)
$tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.6cd78bb8","fallback":" 님의 의뢰: "},{"text":"$(item)","color":"aqua"},{"translate":"aksmp.t.d548d586","fallback":" ×$(left) · 개당 $(pay) 코인 ","with":[{"text":"$(left)"},{"text":"$(pay)"}]},{"translate":"aksmp.t.4f3aeeaa","fallback":"[의뢰 목록]","color":"green","click_event":{"action":"run_command","command":"/trigger jobs"},"hover_event":{"action":"show_text","value":{"text":"/trigger jobs"}}}]
function aksmp:job/board
