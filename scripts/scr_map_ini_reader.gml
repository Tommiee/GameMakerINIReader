colAmount = argument0;
rowAmount = argument1;
slot = 0;
xSlot = 0;
ySlot = 0;

ini_open("mapdata.ini");
for(var i = 0; i < colAmount; i++){
    if(ini_section_exists(string(i))){
        for(var j = 0; j < rowAmount;j++){
            if(ini_key_exists(string(i), string(i))){
                targetString = ini_read_string(string(i), string(j), "read failure");
                //show_message(targetString + " at section: " + string(i) + " key: " + string(j));
                split = "";
                for(var c = 1; c < string_length(targetString)+1; c++){
                    var curChar = string_char_at(targetString,c);
                    if(curChar != ","){
                        split += curChar;
                    } else {
                        splits[slot] = split;
                        curChar = "";
                        split = "";
                        //show_message(splits[slot] + " at section: " + string(i) + " key: " + string(j));
                        slot++;
                    }
                }
            }
        } 
    }   
}
ini_close();

for(sl=1;sl < array_length_1d(splits)=1;sl++){
    if(sl % 2 == 0){
        Xarray[xSlot] = splits[sl];
        xSlot++;
    } else if(sl % 2 == 1){
        Yarray[ySlot] = splits[sl];
        ySlot++;
        //show_message("Assigned Y : " + string(Yarray[ySlot]) + " on slot: " + string(sl));
    } else {
        show_message("error reading splits array, restarting");
        game_restart();
    }
}

for(var i=0;i<array_length_1d(Xarray);i++){
    targetX = Xarray[i];
    targetY = Yarray[i];
    instance_create(real(targetX),real(targetY),object)
}
