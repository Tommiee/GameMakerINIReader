splits = argument0;
object = argument1;

for(var sl=1; sl < array_length_1d(splits)+1; sl++){
    if(sl % 2 == 0){
        targetX[sl] = splits[sl];
        show_message("Assigned X : " + string(targetX) + " on slot: " + string(sl)); 
    } else if(sl % 2 == 1){
        targetY[sl] = splits[sl];
        show_message("Assigned Y : " + string(targetY) + " on slot: " + string(sl));
    } else {
        show_message("error reading splits array");
    }
}

for(var i=0;i<array_length_1d(targetX);i++){
    targetX = targetX[i];
    targetY = targetY[i];
    instance_create(targetX,targetY,object)
}

