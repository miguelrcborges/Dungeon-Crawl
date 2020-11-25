function x = move(a,b,map)
  switch a
  case 'w'
    x = b + [0 -1];
  case 's';
    x = b + [0 1];
  case 'a'
    x = b + [-1 0];
  case 'd'
    x = b + [1 0];
  otherwise
    x = b;
  end
  if map(x(1),x(2)) == 1
    x = b;
  end
end
