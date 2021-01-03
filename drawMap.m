function x = drawmap(map,pos)
  x = 1;
  map(pos(1),pos(2)) = 2;
  for h=1:size(map,2)
    for w=1:size(map,1)
      switch map(w,h)
      case 0
        fprintf(' .');
      case 1
        fprintf('[]');
      case 2
        fprintf('@.');
      case 3
        fprintf('M.');
      case 4
        fprintf(' |');
      case 5
        fprintf('__');
      case 8
        fprintf('$/')
      end
    end
  fprintf('\n');
end
