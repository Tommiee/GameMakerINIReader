if(mouse_y >= bbox_top){
    var distUp = mouse_y - bbox_top;
    if(bbox_top >= 0){
        y += distUp/10;
    }
}

if(mouse_y <= bbox_bottom){
    var distDown = bbox_bottom - mouse_y;
    if(bbox_bottom <= room_height){
        y -= distDown/10;
    }
}
