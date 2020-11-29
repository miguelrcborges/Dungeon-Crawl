pos = [2,2];
world = 1;
while true
  clc
  map = mkMap(pos,world);
  x = drawMap(map,pos);
  action = input('\n','s');
  [world pos map] = move(action,pos,map,world);
end
