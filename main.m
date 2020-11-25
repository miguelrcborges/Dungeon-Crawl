pos = [2,2];
world = 1;
while true
  clc
  map = drawMap(pos,world);
  a = input('\n','s');
  pos = move(a,pos,map);
end
