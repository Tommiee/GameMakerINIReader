randomize();

colAmount = argument0;
rowAmount = colAmount;
colSize = room_width / colAmount;
rowSize = room_height / rowAmount;
object = argument1;

if(file_exists("mapdata.ini")){
    scr_map_ini_reader(colAmount,rowAmount);
    //scr_map_Splitter(splits,object);
} else {
    ini_open("mapdata.ini");
    for(var col=0 ; col<room_width ; col+=colSize){
        for(var row=0 ; row<room_height ; row+=rowSize){
            targetX = irandom_range(col+32,col+((colSize)-64));
            targetY = irandom_range(row+32,row+((rowSize)-64));
            instance_create(targetX,targetY,object);
            ini_write_string(string(col/colSize), string(row/rowSize), string(targetX) + "," + string(targetY) + ",");       
        }
    }
    ini_close();
}
