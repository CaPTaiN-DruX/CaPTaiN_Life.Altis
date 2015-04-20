
#define SAFETY_ZONES    [["Safe_Kav", 600],["safepyrgos", 400],["safe_athira", 400]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "Interdit de Tirer en SafeZone"

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

switch (playerSide) do
{
	case west:
	{};
	
	case civilian:
	{


     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
			 titleText [MESSAGE, "PLAIN", 3];
			 player setDamage 0;
			 hint parseText format["<t color='#01B0F0'><t size ='2.5'<t align='center'>Safe Zone<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Pas de tirs<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Pas de vols<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>Pas de braquage<br/><t"];
			 };
        }];  
	};
};