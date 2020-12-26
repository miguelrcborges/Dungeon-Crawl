function [] = HPBar(health)

N=ceil(health/5);
B=[];
if N~=0
  for i=1:N
    if rem(i,2)==0
      fprintf(']');
    else
      fprintf('[');
    end
  end
end
end
