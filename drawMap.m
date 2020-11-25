function map = drawMap(pos,a);
  switch a
  case 1
    map=[1,1,1,1,1;1,0,0,0,1;1,0,0,0,1;1,0,0,3,1;1,1,1,0,1];
  end
  map(pos(1),pos(2)) = 2
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
      end
    end
  fprintf('\n');
end
