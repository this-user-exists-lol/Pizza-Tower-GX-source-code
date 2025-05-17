switch (image_index)
{
    case 0:
        contentEditor = 112;
        break;
    
    case 1:
        contentEditor = 76;
        break;
    
    case 2:
        contentEditor = 120;
        break;
    
    case 3:
        contentEditor = 116;
        break;
    
    case 4:
        contentEditor = 119;
        break;
    
    case 5:
        contentEditor = 139;
        break;
    
    case 6:
        contentEditor = 140;
        break;
}

with (instance_create_layer(x, y, "Level_structure", obj_baddiespawner))
    content = other.contentEditor;
