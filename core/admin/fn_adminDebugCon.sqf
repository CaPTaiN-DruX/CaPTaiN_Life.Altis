#include <macro.h>
/*
    File: fn_adminDebugCon.sqf
    Author: ColinM9991
    
    Description:
    Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 4) exitWith {closeDialog 0; hint "You have no business using this";};

createDialog "RscDisplayDebugPublic";
[[0,format["l'Admin %1 a ouvert la console de Debug.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;