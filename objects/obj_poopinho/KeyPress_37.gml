/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5703EE03
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "bala"
/// @DnDSaveInfo : "objectid" "bala"
instance_create_layer(x + 0, y + 0, "Instances", bala);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5C5E065A
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);