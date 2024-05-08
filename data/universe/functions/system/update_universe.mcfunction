$data modify storage universe:bundle CurrentUniverse append value {id:"$(id)"}
$data remove storage universe:bundle PreviousUniverse[{id:"$(id)"}]