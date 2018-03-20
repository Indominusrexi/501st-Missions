atte_drive = "B_UGV_01_rcws_F" createVehicle position pad_base;
sleep 1;
comment "create the ai crew";
createVehicleCrew atte_drive;
comment "make invis";
atte_drive setobjecttextureglobal [0,""];   
atte_drive setobjecttextureglobal [1,""];  
atte_drive setobjecttextureglobal [2,""];  
atte_drive setobjecttextureglobal [3,""]; 
comment "remove cargo space";
[atte_drive, -1] call ace_cargo_fnc_setSpace;


comment "damage the wheels to set top speed: gives 3 speeds slow forward = 10km forward = 20km fast forward = 29km";
{atte_drive setHitPointDamage[_x,0.90]} forEach ["HitLF2Wheel","HitRF2Wheel"];
{atte_drive setHitPointDamage[_x,0.90]} forEach ["HitLFWheel","HitRFWheel"];
{atte_drive setHitPointDamage[_x,0.90]} forEach ["HitLmWheel","HitRmWheel"];
atte_drive setHitIndex [20, 1];
atte_drive setHitIndex [21, 1];
atte_drive setHitIndex [22, 1];
atte_drive setHitIndex [23, 1];
atte_drive setHitIndex [24, 1];	
atte_drive lockTurret [[1], true];

comment"Remove the stompers weapons and add in smoke launcher and laser desig";
atte_drive removeWeapon "HMG_127_UGV";
atte_drive removeWeapon "GMG_40mm";
atte_drive addWeaponTurret  ["SmokeLauncher",[0]];  
atte_drive addMagazineTurret ["smokelaunchermag",[0]]; 
atte_drive addMagazineTurret ["smokelaunchermag",[0]]; 
atte_drive addMagazineTurret ["smokelaunchermag",[0]]; 
atte_drive addMagazineTurret ["smokelaunchermag",[0]]; 
atte_drive addWeaponTurret  ["Laserdesignator_mounted",[0]];  
atte_drive addMagazineTurret ["Laserbatteries",[0]]; 
atte_drive allowDamage false;                                                                                                         

comment "create the infantry cargo";
clearMagazineCargoGlobal atte_drive;
atte_drive addMagazineCargoGlobal ["SWOP_DC15ABlasterRifle_Low_Mag", 20];
atte_drive addMagazineCargoGlobal ["SWOP_DC15ABlasterRifle_Full_Mag", 10];
atte_drive addMagazineCargoGlobal ["SWOP_DC15ABlasterRifle_Mag", 20];
atte_drive addMagazineCargoGlobal ["SWOP_DC15_Mag", 3];
clearItemCargoGlobal atte_drive;
atte_drive addItemCargoGlobal ["ACE_elasticBandage", 40];
atte_drive addItemCargoGlobal ["ACE_quikclot", 40];
atte_drive addItemCargoGlobal ["ACE_epinephrine", 10];
atte_drive addItemCargoGlobal ["ACE_plasmaIV_500", 40];
atte_drive addItemCargoGlobal ["ACE_packingBandage", 20];
atte_drive addItemCargoGlobal ["SW_SquadShield_Mag", 4];
atte_drive addItemCargoGlobal ["B_UavTerminal", 1];


atte_body  = "Republic_ATTE" createVehicle position pad_parthold;
ATTE_BODY attachTo [ATTE_DRIVE,[0,-0.5,-2]]; 

Comment "Buff the armour";
	atte_body addeventhandler ["HandleDamage",{
	_unit = _this select 0;
	_selection = _this select 1;
	_passedDamage = _this select 2;
	_source = this_ select 3;
	_projectile = this_ select 4;
	_oldDamage = 0;
	switch(_selection)do{
		case(""):{_oldDamage = damage _unit;};
		default{};
	};
	_return = _oldDamage + ((_passedDamage - _oldDamage) / 3);
	_return
	}];

	
comment "ITT";	
atte_mens = "O_SWOP_HoverTr_2" createVehicle position pad_base;
comment "Set the name and attach it to the Stomper";
ATTE_MENS attachTo [ATTE_DRIVE,[0,-4.6,2.3]];
comment "make it invisible";	
(atte_mens) setobjecttextureglobal [0,""]; 
comment "make it invulnerable remove the ammo and turn the lights and engine on";
atte_mens allowDamage false;
atte_mens engineOn true;
atte_mens setPilotLight true;
atte_mens lockDriver true;
[atte_mens, 9] call ace_cargo_fnc_setSpace;
atte_mens addMagazineTurret ["40Rnd_82mm_ITT",[0]]; 
atte_mens addMagazineTurret ["40Rnd_82mm_ITT",[0]];
atte_mens addMagazineTurret ["40Rnd_82mm_ITT",[0]];
atte_mens addMagazineTurret ["40Rnd_82mm_ITT",[0]]; 
atte_mens addMagazineTurret ["40Rnd_82mm_ITT",[0]];
atte_mens addMagazineTurret ["40Rnd_82mm_ITT",[0]];


comment "remote desig";	
atte_com = "B_Static_Designator_01_F" createVehicle position pad_base;
comment "Set the name and attach it to the Stomper";
ATTE_com attachTo [ATTE_DRIVE,[0,0.9,6.8]]; 
atte_com allowDamage false;
createVehicleCrew atte_com; 
[atte_com, true] remoteExec ["hideObjectglobal", 0];


atte_gun1 = "B_HMG_01_A_F" createVehicle position pad_base;
ATTE_gun1 attachTo [ATTE_drive,[1.2,4.3,3.6]]; 
ATTE_gun1 removeWeapon "HMG_static"; 
ATTE_gun1 addWeaponTurret ["Cannon_LAAT",[0]]; 
ATTE_gun1 addMagazineTurret ["1000Rnd_Laser_Cannon_LAAT",[0]];    
createVehicleCrew ATTE_gun1;
[atte_gun1, true] remoteExec ["hideObjectglobal", 0];
Comment "Buff the armour";
atte_gun1 addEventHandler ["HandleDamage", { 
       _damage = _this select 2; 
           if ( (_this select 1 == "") and (_damage > 0.9999) ) then { _damage = 0.9999 }; 
       _damage; 
       }];


atte_gun2 = "B_HMG_01_A_F" createVehicle position pad_base;
ATTE_gun2 attachTo [ATTE_drive,[-1.0,4.3,3.6]];  
atte_gun2 removeWeapon "HMG_static";  
atte_gun2 addWeaponTurret ["Cannon_LAAT",[0]]; ;  
atte_gun2 addMagazineTurret ["1000Rnd_Laser_Cannon_LAAT",[0]];  
createVehicleCrew ATTE_gun2;
atte_gun2 allowCrewInImmobile true;
[atte_gun2, true] remoteExec ["hideObjectglobal", 0];
atte_gun2 addEventHandler ["HandleDamage", { 
       _damage = _this select 2; 
           if ( (_this select 1 == "") and (_damage > 0.9999) ) then { _damage = 0.9999 }; 
       _damage; 
       }];
	   
	   
	   

atte_gun3 = "B_HMG_01_A_F" createVehicle position pad_base;
ATTE_gun3 attachTo [ATTE_drive,[-0.7,-7.6,3.8]];  
atte_gun3 removeWeapon "HMG_static";  
atte_gun3 addWeaponTurret ["Cannon_LAAT",[0]]; 
atte_gun3 addMagazineTurret ["1000Rnd_Laser_Cannon_LAAT",[0]]; 
createVehicleCrew ATTE_gun3;
atte_gun3 setdir 180;
atte_gun3 allowCrewInImmobile true;
[atte_gun3, true] remoteExec ["hideObjectglobal", 0];
atte_gun3 addEventHandler ["HandleDamage", { 
       _damage = _this select 2; 
           if ( (_this select 1 == "") and (_damage > 0.9999) ) then { _damage = 0.9999 }; 
       _damage; 
       }];
