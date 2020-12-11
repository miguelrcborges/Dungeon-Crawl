world1 = [1 1 1 1 1 1 1 1; 1 0 0 0 0 0 0 1; 1 0 0 0 0 0 0 1; 1 1 1 1 1 1 0 1; 1 0 0 0 3 0 0 1; 1 0 0 1 0 0 0 5; 1 0 0 1 0 0 0 1; 1 1 1 1 1 1 1 1];
world2 = [1 1 1 1 1 1 1 1; 5 0 1 1 0 0 0 1; 1 0 1 1 1 1 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 0 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 1 0 1; 1 0 1 0 0 1 0 1; 1 0 0 0 0 1 0 1; 1 0 0 0 0 1 0 1; 1 0 0 0 0 1 0 5; 1 0 0 0 0 1 0 1; 1 1 1 1 1 1 1 1];
world3 = [1 1 1 1 1 1 1 1 1; 1 0 0 0 8 0 0 0 1; 1 0 0 0 0 0 0 0 1;1 0 0 0 0 0 0 0 1;1 0 0 0 0 0 0 0 1;5 0 0 0 0 0 0 0 5;1 0 0 0 0 0 0 0 1;1 0 0 0 0 0 0 0 1;1 0 0 0 0 0 0 0 1;1 0 0 0 0 0 0 0 1;1 1 1 1 4 1 1 1 1];
world4 = [1 1 1 1 1 1 1 1; 1 0 0 0 0 0 0 1; 5 0 0 0 1 1 3 1; 1 0 0 0 0 1 0 1; 1 0 0 0 0 1 0 1; 1 0 1 1 0 1 1 1; 1 0 1 1 0 0 0 1; 1 0 1 1 0 0 0 1; 1 0 1 1 0 0 0 1; 1 0 1 1 1 1 1 1; 1 0 1 1 1 1 0 1; 1 0 0 0 0 1 0 1; 1 1 1 1 0 1 0 1; 1 1 1 1 0 1 0 1; 1 1 1 1 0 0 0 1; 1 1 1 1 1 1 1 1];
pos = [2,2];
world = 1;
event = [0 0];
user=[50 10 10];  %Hp, attack, defense
while true
if fight=0
  clc
  map = mkMap(pos,world,world1,world2,world3,world4);
  x = drawMap(map,pos);
  action = input('\n','s');
  [world pos map] = move(action,pos,map,world);



elseif fight==1
(enemy_name,enemy_stats)=FightSetup(world,pos(1),pos(2));

%%fighting prototype code
clc;
enemy=enemy_stats;
while fight==1
    disp(HealthBar(user(1)))
    disp(user(1));
    disp(HealthBar(enemy(1)))
    disp(enemy(1));
    dodge=0;
    dmg=0;
    victory=0;
    fprintf('\n(1)Attack\n(2)Dodge\n(3)Talk\n(4)Bag\n(5)Run\n');
    action=input(' ');
    switch action
        case 1
            %action
            dmg=user(2);
        case 2
            %dodge
            dodge=1;
	case 3
            resp=response(enemy_name);
            fprintf('%s',resp);
        case 4
            %open bag
        case 5
            %run away
            fight=0;
    end

    %Moves
    if dmg>enemy(3)
        enemy(1)=enemy(1)-dmg+enemy(3);
    end
    if enemy(2)>user(3) && dodge==0
        user(1)=user(1)-enemy(2)+user(3);
    end
    if enemy(1)<0
        fight=0;
        victory=1;
    end
    if user(1)<0
        fight=0;
    end
end
if victory==1
    clc
    fprintf('Congratulations!! \n\nYou defeated %s!!\n\n',enemy_name);
end
fight=('Press any key to continue');
fight=0;
end
end
