function [enemy_name,enemy_stats] = FightSetup(world,py,px)  %ativar só em contacto com o monstro

  switch world
  case 2
    if (py,px)==(5,5)
      enemy_name='Pikachu';
      enemy_stats=[40 5 5];
    end
  case 4
    if (py,px)==(5,7)
      enemy_name='Dragon';
      enemy_stats=[100 15 10];
    elseif (py,px)==(7,3)
      enemy_name='Skeleton Guard';
      enemy_stats=[64 10 7];
    elseif (py,px)==(5,13)
      enemy_name='Guard 1';
      enemy_stats=[50 5 10];
    elseif (py,px)==(7,13)
      enemy_name='Guard 2';
      enemy_stats=[50 15 5];
    end
  end
