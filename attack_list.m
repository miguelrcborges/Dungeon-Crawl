function [moveset,move_names] = attack_list(moveset_code)

%para organizar as ideias. porgrama-se a funçao em si dps

%damage, acc, type
%types: 1 - fogo; 2 - água; 3 - terra; 4 - plantas; 5 - gelo

%1 Firebolt  (10,8,1)

%2 Fireblast (20,7,1)

%3 Bubble Stream (15,8,2)

%4 Dust Cloud (10,9,3)

%5 Earthquake (20,8,3)

%6 Vine Growth (10,9,4)

%7 Freeze Ray (10,9,5)

%8 Icycle Shards (15,8,5)

%9 Spark (10,9,6)

%10 Lightning Bolt (20,7,6)

move_database = [10,8,1; 20,7,1; 15,8,2; 10,9,3; 20,8,3; 10,9,4; 10,9,5; 15,8,5; 10,9,6; 20,7,6];
move_name_database = [{'Firebolt'};{'Fireblast'};{'Bubble Stream'};{'Dust Cloud'};{'Earthquake'};{'Vine Growth'};{'Freeze Ray'};{'Icycle Shards'};{'Spark'};{'Lightning Bolt'}];

moveset = [move_database(moveset_code(1),:);move_database(moveset_code(2),:);move_database(moveset_code(3),:);move_database(moveset_code(4),:)];
move_names = [move_name_database(moveset_code(1));move_name_database(moveset_code(2));move_name_database(moveset_code(3));move_name_database(moveset_code(4))]
