[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\BarDeStatus.sqf";
[] execVM "scripts\GazLacrimo.sqf";
[] execVM "scripts\zlt_fastrope.sqf";
[] execVM "scripts\safezone.sqf";
if(isDedicated && isNil("life_market_prices")) then
{
[] call life_fnc_marketconfiguration;
diag_log "Market prices generated!";
 
"life_market_prices" addPublicVariableEventHandler
{
diag_log format["Market prices updated! %1", _this select 1];
};
 
//Start server fsm
[] execFSM "core\fsm\server.fsm";
diag_log "Server FSM executed";
};

StartProgress = true;
 
MAC_fnc_switchMove = {
private["_object","_anim"];
_object = _this select 0;
_anim = _this select 1;

_object switchMove _anim;

};
