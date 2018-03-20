Super_sabre = "O_JM_TX130m2r_1" createVehicle [(getPos pad_base select 0), (getPos pad_base select 1), (getPos pad_base select 2)];
Comment "Buff the armour";

Super_sabre addEventHandler ["HandleDamage", { 
if (_this select 1 == "") then { 
_this select 2 
} else { 
0 
} 
}];
Super_sabre addMagazineTurret ["100Rnd_TXLaser_Cannon_mag",[0]];
Super_sabre addMagazineTurret ["100Rnd_TXLaser_Cannon_mag",[0]];
Super_sabre addWeaponTurret  ["SmokeLauncher",[-1]];  
Super_sabre addMagazineTurret ["smokelaunchermag",[-1]]; 
Super_sabre addMagazineTurret ["smokelaunchermag",[-1]]; 
Super_sabre addMagazineTurret ["smokelaunchermag",[-1]]; 
Super_sabre addMagazineTurret ["smokelaunchermag",[-1]];
