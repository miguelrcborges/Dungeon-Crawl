function [world newpos map] = move(action,pos,map,world)
  switch action
  case 'w'
    newpos = pos + [0 -1];
  case 's';
    newpos = pos + [0 1];
  case 'a'
    newpos = pos + [-1 0];
  case 'd'
    newpos = pos + [1 0];
  otherwise
    newpos = pos;
  end
  if map(newpos(1),newpos(2)) == 1
    newpos = pos;
  end
end
