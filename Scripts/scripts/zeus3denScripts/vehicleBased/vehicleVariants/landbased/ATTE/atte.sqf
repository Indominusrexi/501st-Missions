//Add Hull Damage reports and repair ability to at-te
attev1={
	params["_vic"];
	comment "gets health";
	
	_vic addAction ["<t color='#00FF00'>Hull Damage Report</t>",
	{


	hint parseText format["<t color='#0099FF'> Hull Integrity is :%1%2</t>",((1-(damage (_this  select 0)))*100),"%"];

	},[1],0,false,true,""," commander  _target == _this "];
	
	_vic removeAllEventHandlers "Fired";
	_vic  addAction ["<t color='#886688'>Repair</t>",
	{[_this select 0] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Repair\repair.sqf";}];	
	
	};

	["Republic_ATTE", "init",attev1, true, [], true] call CBA_fnc_addClassEventHandler; 


	
//Buff AT-TE'S Weapons
["Republic_ATTE", "fired", {_Unit = (_this select 0); 
	_ProjType = _this select 4; 
	_Projectile = _this select 6; 
	_Up = vectorUp _Projectile; 
	_ProjPos = getPosASL _Projectile; 
	_dist=1; 
	for "_i" from 1 to 3 do { 
			 
	_o = _ProjType createVehicle _ProjPos; 
	_o setPosASL [ 
	(_ProjPos select 0) + ((vectorDir _Unit) select 0)*(_dist), 
	(_ProjPos select 1) + ((vectorDir _Unit) select 1)*(_dist), 
	(_ProjPos select 2) + ((vectorDir _Unit) select 2)*(_dist) 
	 ]; 
	_o setVectorDirAndUp[(vectorDir _Unit),_up]; 
	_o setVelocity velocity _Projectile; 
	}; 
	}] call CBA_fnc_addClassEventHandler;
