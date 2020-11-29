function map = mkMap(pos,world,world1);
  switch world
  case 1
    map=world1;
  case 2
    map=[1 1 1 1 1 1 1 1; 5 0 1 1 0 0 0 1; 1 0 1 1 1 1 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 0 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 1 0 1; 1 0 0 0 0 1 0 1; 1 0 0 0 0 1 0 1; 1 0 0 0 0 1 0 1; 1 0 0 0 0 1 0 1; 1 1 1 1 1 1 1 1];
  end
end
