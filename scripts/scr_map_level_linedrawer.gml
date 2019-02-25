var range = 500;

for(var i = 0; i < instance_number(obj_level); i++){
    levels[i] = instance_find(obj_level,i);
    if(levels[i].x < global.levelPreviousX + range && levels[i].x > global.levelPreviousX - range){
        if(levels[i].y < global.levelPreviousY + range && levels[i].y > global.levelPreviousY - range){
            depth = 10000;
            draw_line_width(levels[i].x,levels[i].y,global.levelPreviousX,global.levelPreviousY,10);            
        }
    }
}

