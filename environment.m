function [newe] = environment(current,type)
newe=0;
%types: 1 - fogo; 2 - água; 3 - terra; 4 - plantas; 5 - gelo
%0 -normal; 1 - fogo , 2 - flooded , 3 - rocky , 4 - forrest , 5 - gelo , 21  - steam  (21 para dar espaço entre os compostos e os simples)
newe=current;
switch current
case 0
    newe=type;
case 1
  switch type
  case 2
    newe=21;
  case 3
    newe=0;
  end
case 2
  switch type
  case 4
    newe=4;
  end
case 3
  switch type
  case 4
    newe=4;
  case 5
    newe=5;
  end
case 4
  switch type
  case 1
    newe=1;
  case 5
    newe=5;
  end
case 21
  switch type
  case 5
    newe=2;
  end
end
end
