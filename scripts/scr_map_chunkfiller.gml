xStart = argument0;     //c
yStart = argument1;     //r
xSize = argument2;      //room_width/cellAmount
ySize = argument3;      //room_height/rowAmount
object = argument4;     //object

targetX = irandom_range(xStart+32,xStart+(xSize-64))
targetY = irandom_range(yStart+32,yStart+(ySize-64))

//draw_line(prevObject.x,prevObject.y,targetX,targetY);

instance_create(targetX,targetY,object);
