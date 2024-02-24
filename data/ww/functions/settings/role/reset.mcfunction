data remove storage wherewolf: roles
data modify storage wherewolf: roles append value {id:0,name:"市民",ur_name:"市民",view_name:"市民",color:"green",ur_color:"green",vcondition:"ctz"}
data modify storage wherewolf: roles append value {id:1,name:"人狼",ur_name:"人狼",view_name:"人狼",color:"red",ur_color:"red",vcondition:wolf,value:1}
data modify storage wherewolf: roles append value {id:2,name:"共犯者",ur_name:"共犯者",view_name:"共犯者",color:"red",ur_color:"red",vcondition:mad,value:0}
data modify storage wherewolf: roles append value {id:3,name:"吸血鬼",ur_name:"吸血鬼",view_name:"吸血鬼",color:"red",ur_color:"red",vcondition:vampire,value:0}
data modify storage wherewolf: roles append value {id:4,name:"狼憑き",ur_name:"人狼",view_name:"市民",color:"green",ur_color:"red",vcondition:ctz,value:0}