function [] = fight(monster,user)
  switch monster
  case 'Pikachu'
    enemy = [40 5 5];
  end
  fight = 1;
  clc
  while fight == 1
    fprintf('\n Your health');
    HPBar(user(1))
    disp(user(1))
    fprintf('\n %s',monster);
    HPBar(enemy(1))
    disp(enemy(1))
    dodge = 0;
    dmg = 0;
    victory = 0;
    action = input('\n(1)Attack\n(2)Dodge\n(3)Talk\n(4)Bag\n(5)Run\n','s');
    clc
    switch action
    case '1'
      dmg = user(2);
    case '2'
      dodge = 1;
    case '3'
      response(monster)
    case '4'
    case '5'
      fight = 0;
    end
    if dmg > enemy(3)
        enemy(1) = enemy(1) - dmg + enemy(3);
    end
    if enemy(2) > user(3) && dodge == 0
        user(1) = user(1) - enemy(2) + user(3);
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
  input('Press any key to continue');
end
