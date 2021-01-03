function [world newpos map] = collision(pos,map,world,newpos,user,move_names,moveset)
  if map(newpos(1),newpos(2)) == 1
    newpos = pos;
  else
    switch world
    case 1
      world = 2;
      newpos = [2 2];
    case 2
      if newpos == [2 1]
        world = 1;
        newpos = [6 7];
      elseif newpos == [13 8]
        world = 3;
        newpos = [6 2];
      elseif map(newpos(1),newpos(2))== 3
        fight('Pikachu',user,move_names,moveset)
      end
    case 3
      if newpos == [6 1]
        world = 2;
        newpos = [13 7];
      elseif newpos == [6 9];
        world = 4;
        newpos = [3 2];
      end
    case 4
      world = 3;
      newpos = [6 8];
    end
  end
end
