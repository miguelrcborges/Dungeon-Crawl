pos = [2,2];
world = 1;
while true
  map = drawMap(pos,world);
  a = input('\n','s');
  pos = move(a,pos,map);
end
