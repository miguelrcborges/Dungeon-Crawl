function [] = fight(monster,user,move_names,moveset,username)
  switch monster
  case 'Pikachu'
    enemy = [40 5 5];
    env=0
  end
  fight = 1;
  clc
  while fight == 1
    fprintf('%d\n %s \n',env,username);
    HPBar(user(1))
    fprintf('\n')
    disp(user(1))
    fprintf('\n %s\n',monster);
    HPBar(enemy(1))
    fprintf('\n')
    disp(enemy(1))
    dodge = 0;
    dmg = 0;
    victory = 0;
    action = input('\n(1)Attack\n(2)Dodge\n(3)Talk\n(4)Bag\n(5)Run\n','s');
    clc
    switch action
    case '1'
      %dmg = user(2);
      fprintf('\n(1)%s\n(2)%s\n(3)%s\n(4)%s\n',move_names{1},move_names{2},move_names{3},move_names{4});  %usei action 2 pq n sei se usar action buga o jogo. also move_names n sei se é´melhor q ter 4 variaveis para cada move
      action = input('');
      dmg = moveset(action,1);
      clc
    case '2'
      dodge = 1;
    case '3'
      response(monster)
    case '4'
    case '5'
      fight = 0;
    end
    if dmg > enemy(3) && randi(10)<=moveset(action,2)
        enemy(1) = enemy(1) - dmg;
        env=environment(env,moveset(action,3));
    end
    if enemy(2) > user(3) && dodge == 0
        user(1) = user(1) - enemy(2);
    end
    if enemy(1) <= 0
        fight = 0;
        victory = 1;
    end
    if user(1) <= 0
      fight = 0;
    end
  end
  if victory == 1
    clc
    fprintf('Congratulations!! \n\nYou defeated %s!!\n\n',monster);
  end
  input('Press Enter to continue','s');
end
