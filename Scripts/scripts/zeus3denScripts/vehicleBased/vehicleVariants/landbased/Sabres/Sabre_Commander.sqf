Sabre_com = "O_JM_TX130r_1" createVehicle [(getPos pad_base select 0), (getPos pad_base select 1), (getPos pad_base select 2)];
Comment "Buff the armour";

Sabre_com addEventHandler ["HandleDamage", { 
if (_this select 1 == "") then { 
_this select 2 
} else { 
0 
} 
}];

