//Adds spawn option for AT-TE Standard (no additional turrets)
	_this  addAction ["<t color='#47FF1A'>AT-TE Standard Class</t>",                
	{
    [] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\ATTE\atte_standard.sqf";
    }];

	
//Adds spawn option for AT-TE Assault (additional turrets)
	_this  addAction ["<t color='#0000FF'>AT-TE Assault Class</t>",                
	{
    [] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\ATTE\atte_assaultclass.sqf";
	}];
	
//Adds spawn option for AT-TE Inferno (RocketITT)
	_this  addAction ["<t color='#FF1A1A'>AT-TE Inferno Class</t>",                
	{
    [] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\ATTE\atte_infernoclass.sqf";
	}];
		
	
	
	
//Adds spawn option for Sabre Commander with Eweb instead of DC15a				
	_this  addAction ["<t color='#0230FF'>Sabre Commander</t>",                
	{
    [] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\Sabres\Sabre_Commander.sqf";
    }];


//Adds spawn option for Sabre standard with ammo for main gun and Eweb instead of DC15a	
	_this  addAction ["<t color='#00f9ff'>Sabre</t>",               
	{
    [] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\Sabres\Sabre.sqf";
    }];			
	
	
//Adds spawn option for Super Sabre 
	_this  addAction ["<t color='#F4A460'>Super Sabre</t>",                
	{
    [] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\Sabres\Sabre_Super.sqf";
    }];			
