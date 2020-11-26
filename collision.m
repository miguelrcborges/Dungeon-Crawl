function [world newpos map] = collision(pos,map,world,newpos)
  switch map(newpos(1),newpos(2))
  case 1
    newpos = pos;
  end
end
