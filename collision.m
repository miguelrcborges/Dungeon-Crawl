function [world newpos map] = collision(pos,map,world,newpos)
  if map(newpos(1),newpos(2)) == 1
    newpos = pos;
  else
    switch world
    case 1
      world = 2;
      newpos = [2 2];
    case 2
      world = 1
      newpos = [6 7]
    end
  end
end
