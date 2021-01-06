function [new] = environment(current,type)

%types: 1 - fogo; 2 - água; 3 - terra; 4 - plantas; 5 - gelo
%0 -normal; 1 - fogo , 2 - flooded , 3 - rocky , 4 - forrest , 5 - gelo , 21  - steam  (21 para dar espaço entre os compostos e os simples)

switch current
case 0
    new=type;
case 1
  switch type
  case 2
    new=21;
  case 3
    new=0;
  end
case 2
  switch type
  case 4
    new=4;
  end
case 3
  switch type
  case 4
    new=4;
  case 5
    new=5;
  end
case 4
  switch type
  case 1
    new=1;
  case 5
    new=5;
  end
case 21
  switch type
  case 5
    new=2;
  end
end
end
