world1 = [1 1 1 1 1 1 1 1; 1 0 0 0 0 0 0 1; 1 0 0 0 0 0 0 1; 1 1 1 1 1 1 0 1; 1 0 0 0 0 0 0 1; 1 0 0 1 0 0 0 5; 1 0 0 1 0 0 0 1; 1 1 1 1 1 1 1 1];
pos = [2,2];
world = 1;
event = [0 0];
while true
  clc
  map = mkMap(pos,world,world1)
  x = drawMap(map,pos);
  action = input('\n','s');
  [world pos map] = move(action,pos,map,world);
end
