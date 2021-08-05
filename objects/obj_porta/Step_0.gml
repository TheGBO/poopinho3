if (distance_to_object(obj_poopinho) <= 4)
{
    //Include code regarding player coordinates relative to the door to set the variable "dir" to 1 or -1

    force = force_multi * dir;
}

force *= force_slow;
image_angle += force;