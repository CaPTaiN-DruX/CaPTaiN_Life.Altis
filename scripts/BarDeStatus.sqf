waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
 
_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
 
[] spawn {
sleep 5;
_statusText = "Bienvenue";
_counter = 180;
_timeSinceLastUpdate = 0;
while {true} do
{
sleep 1;
_counter = _counter - 1;
_statusText = "Geek For Life";
((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["%3 | Reboot dans %7 Minutes | FPS: %1 | Flics: %4 | Médecins: %5 | Position: %6", round diag_fps, count playableUnits, _statusText, west countSide playableUnits, independent countSide playableUnits, mapGridPosition player, (357-(round(serverTime/60)))];
};
};
