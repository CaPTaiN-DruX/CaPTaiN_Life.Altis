/* 
----------------------------------------------|
Author: Backer
Description: Set the drug level to 0 !
----------------------------------------------|
*/

private["_medic","_player"];
_medic = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_player = player;
if(isNull _medic) exitWith {};
if(!alive player) exitWith {};
if(!alive _medic) exitWith {};

if (life_drug > 0) then
{
life_drug = 0;
hint "Ils ont �t� trait�s avec succ�s par un m�decin, le traitement a �t� efficace!";
}else{
hint "Vous ne devriez pas vous mentir sur votre d�pendance, sinon on ne vous aidera pas la prochaine fois  avec l'amculance !";

}; 