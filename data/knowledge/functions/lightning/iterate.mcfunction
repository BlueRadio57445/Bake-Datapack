scoreboard players add $count knowledge.lightning 2

function knowledge:lightning/basic_line
function knowledge:lightning/bolt_dir

execute if score $count knowledge.lightning matches ..12 if predicate knowledge:probability rotated as @e[type=marker,tag=bolt_dir,limit=1,sort=random] run function knowledge:lightning/iterate
scoreboard players remove $count knowledge.lightning 1
execute if score $count knowledge.lightning matches ..16 positioned ^ ^ ^2 rotated as @e[tag=bolt_dir,limit=1,sort=random] run function knowledge:lightning/iterate