function [type, dmg] = moveset(tb n sei, vê-se dps)

mov=input('>1 Espada \n >2 Raio de Fogo \n >3 Raio de Gelo \n >4 Raio de Água \n');

switch mov
case 1
  type='N'
  dmg=10
case 2
  type='F'
  dmg=30
case 3
  type='I'
  dmg=30
case 4
  type='W'
  dmg=30
end                     %Metemos dps tudo com matrizes para dar pra varios
                        %ataques. Só podes ter 4, ent ha uma matriz com todos
                        %os ataques e outra com 4 na posição 1,2 3 e 4, em
                        %q a dimensão vertical é o nome, o tipo e o dano, para
                        %conseguires trocar o moveset.
                        %Os moves tb devem levar buffs de items ou potencialmente
                        %level up? (do ataque, n do player. pr simplificar)
