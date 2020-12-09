function [B] = HealthBar(health)

fprintf('\n'); %nnova linha
N=ceil(health/5);
B=[];
if N~=0
  for i=1:N
    if rem(i)==0
      B=[B sprintf('[')];
    else
      B=[B sprintf(']')];
    end
  end
end
