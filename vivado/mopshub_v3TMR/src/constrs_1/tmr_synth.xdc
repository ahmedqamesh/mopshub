
set cells_voter [get_cells -quiet -hierarchical -filter {NAME =~ "*Voter*" && IS_PRIMITIVE == false}]
set cells_fanout [get_cells -quiet -hierarchical -filter {NAME =~ "*Fanout*" && IS_PRIMITIVE == false}]

set_property KEEP_HIERARCHY true [get_cells $cells_voter ]

set_property KEEP_HIERARCHY true [get_cells $cells_fanout ]

#set_property KEEP_HIERARCHY SOFT [get_cells clk_40Fanout]
#set_property KEEP_HIERARCHY SOFT [get_cells clk_elinkFanout]
#set_property KEEP_HIERARCHY SOFT [get_cells clk_uartFanout]
#set_property KEEP_HIERARCHY SOFT [get_cells rstFanout]



#set_property DONT_TOUCH true [get_cells $cells_voter ]
#set_property DONT_TOUCH true [get_cells $cells_fanout ]

#set pins_voter [get_pins -of_objects [get_cells $cells_voter ] -filter {NAME =~ "*inA*" || NAME =~ "*inB*" || NAME =~ "*inC*" || NAME =~ "*out*"}]
#set pins_fanout [get_pins -of_objects [get_cells $cells_fanout ] -filter {NAME =~ "*inA*" || NAME =~ "*inB*" || NAME =~ "*inC*" || NAME =~ "*out*"}]

#set_property KEEP true [get_nets -of_objects [get_pins $pins_voter ]]
#set_property KEEP true [get_nets -of_objects [get_pins $pins_fanout ]]