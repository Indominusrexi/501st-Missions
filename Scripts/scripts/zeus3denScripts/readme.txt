last update 3/20/2018 5:33 pm est by Rexi

Here is the file path of various scripts,if its not listed here then its probably 1)scripts being prepped or 2) we forgot :P

/////////////////NOTE THESE FILE PATHS ARE/HAVE TO BE RELAVTIVE TO THE MAIN INIT.SQF FILE////////////////////////////////



///////////////            KEY              ////////////////////
/*
---H means head,usually a script that is automatically ran via EH or CBA XEH.
---X means tied to a ---H, no need to really apply it.
---F free script,meaning you can either use in 3den or zeus if you need it.


*/
///////////////         END KEY              ////////////////////

//To run namenaiInit do/add the following to the main init.sqf
//Or if you want to not have all the bells and whistles  just put // infront of the below line if its in init.sqf, or remove it
[] execVM "scripts\zeus3denScripts\namenaisInit.sqf";



//Vehicle scripts
	//vehicleVariants
		//airBased
			//laat weapon,no need to worry as it will auto apply ---H
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\airBased\LAAT\laatClaymore.sqf";
				
			//arc-170 weapon,no need to worry as it will auto apply ---H
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\airBased\ARC\arcXiphos.sqf";
				
			//arc-170 prevent ejection,note this is tied into the arc-170 weapon script ---X
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\airBased\ARC\removeEject.sqf";
				
			//y-wing weapons,no need to worry as it will auto apply ---H
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\airBased\YWING\ywingScylla.sqf";
			
		//supporting vehicle scripts,under vehicleBased/actionMenu based
			//arc-170 wing tip smoke,tied to arc weapon ---X
				[] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Smoke\ARC\arcSmokeTipPrB.sqf";
				[] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Smoke\ARC\arcSmokeTipRB.sqf";
				[] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Smoke\ARC\arcSmokeTipWB.sqf";

			//laat wing tip smoke ,tied to laat weapon ---X
				[] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Smoke\LAAT\laatSmokeTip.sqf";

			//Y-wing thruster tip smoke ,tied to y-wing weapon ---X
				[] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Smoke\YWING\ywingSmokeTip.sqf";
				
			//Repair 
				//Repair script ---X
				[] execVM "Scripts\scripts\zeus3denScripts\vehicleBased\actionMenu\Repair\repair.sqf";	
					//Add the below to a vehicle to add repair option this should be used for things like turrets that can't be repaired via standard arma/ace. Consumes Toolkits for each repair. (Repairs to a max of 65%) ---F
					_this addAction ["<t color='#00FF00'>Hull Damage Report</t>",{	hint parseText format["<t color='#0099FF'> Hull Integrity is :%1%2</t>",((1-(damage (_this  select 0)))*100),"%"];},[1],0,false,true,""," commander  _target == _this "];

		//seaBased
			//speedBoats
				//Blufor
					//Blufor Speedboat,adds republic eweb for rear and u-wing gunner gun for main cannon ---H
					[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\seaBased\speedBoats\Blufor\bluforSpeedBoat.sqf";
				//Opfor
					//Opfor Speedboat,adds imperial eweb for rear and u-wing gunner gun for main cannon ---H
					[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\seaBased\speedBoats\Opfor\opforSpeedBoat.sqf";
					
		//LandBased
			//Composition Spawner used to spawn vehicles, requires two invisible helipads called "Pad_base" and "Pad_parthold" at least 20m apart ---X
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\landbased\Composition_Spawner.sqf" 
		
			//Mortars
				//Adds flares to simulate plasma Mortars NATO(Blue) and CSAT(Red) ---H
				[] execVM  "scripts\zeus3denScripts\vehicleBased\vehicleVariants\landbased\Mortar\mortars.sqf";
			
			//AT-TE 
				//AT-TE Increases weapon damage and adds damage reports for AT-TE ---H
				[] execVM  "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\ATTE\atte.sqf";
				
				//Adds spawn option for AT-TE Standard (no additional turrets)  (if no spawner on map requires two invis helipads called "Pad_base" and "Pad_parthold" at least 20m apart)---X 
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\ATTE\atte_standard.sqf";
   	
				//Adds spawn option for AT-TE Assault (additional turrets) (if no spawner on map requires two invis helipads called "Pad_base" and "Pad_parthold" at least 20m apart)---X
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\ATTE\atte_assaultclass.sqf";
	
				//Adds spawn option for AT-TE Inferno (RocketITT) (if no spawner on map requires two invis helipads called "Pad_base" and "Pad_parthold" at least 20m apart)---X
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\ATTE\atte_infernoclass.sqf";
		
			//Sabre	
				//Sabre adds weapons and smokes and damage reports ---H
				[] execVM  "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\sabres\Sabres.sqf";
					
				//Adds spawn option for Sabre Commander with Eweb instead of DC15a		(if no spawner on map requires ONE invis helipad called "Pad_base" )---X	
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\Sabres\Sabre_Commander.sqf";

				//Adds spawn option for Sabre standard with ammo for main gun and Eweb instead of DC15a	 (if no spawner on map requires ONE invis helipad called "Pad_base" )---X
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\Sabres\Sabre.sqf";
	
				//Adds spawn option for Super Sabre  (if no spawner on map requires ONE invis helipad called "Pad_base" )---X
				[] execVM "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\Sabres\Sabre_Super.sqf";
    			
			//Barc
				//Barc allows Barcs to be loaded into vehicles with a cargo space 4 or greater i.e LAATS ---H
				[] execVM  "scripts\zeus3denScripts\vehicleBased\vehicleVariants\Landbased\barc\barc.sqf";


					
	//Vehicle Action Menu Based
		//kappa-cruisie boost ---F
			[] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Boost\forwardKappa.sqf";
			[] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Boost\reverseKappa.sqf";
			
			//3den use,note dont use both,working on fixing so that both can be used
			[this] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Boost\forwardKappa.sqf";
			[this] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Boost\reverseKappa.sqf";
			
			//zeus use,note dont use both,working on fixing so that both can be used
			[_this] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Boost\forwardKappa.sqf";
			[_this] execVM "scripts\zeus3denScripts\vehicleBased\actionMenu\Boost\reverseKappa.sqf";
			
			
//Played Based	
	//Aviation Based
		//pilot kill detector ---F
			[] execVM "scripts\zeus3denScripts\playerBased\aviation\pilotBased\pilotProtectorBoxEH.sqf";
			[this] execVM "scripts\zeus3denScripts\playerBased\aviation\pilotBased\pilotProtectorBoxEH.sqf";//for when you want this on a object in 3den
			[_this] execVM "scripts\zeus3denScripts\playerBased\aviation\pilotBased\pilotProtectorBoxEH.sqf";//for when you want to apply it during zeus
			
		//warden resupply ammo ---F
			[] execVM "scripts\zeus3denScripts\playerBased\aviation\wardenBased\wardenAmmoBox.sqf";
			[this] execVM "scripts\zeus3denScripts\playerBased\aviation\wardenBased\wardenAmmoBox.sqf";//for when you want this on a object in 3den
			[_this] execVM "scripts\zeus3denScripts\playerBased\aviation\wardenBased\wardenAmmoBox.sqf";//for when you want to apply it during zeus

	
	
//AI Based
	//FactionBased
		//OPFOR Based
			//CIS
				//b2 reconfig,forces b2's to walk--H
					[] execVM "scripts\zeus3denScripts\aiBased\factionBased\opfor\cis\b2\b2Reconfig.sqf";
		//BLUFOR Based
		
		//INDEPENDENT Based
		
		//CIVILLIAN Based
		
		
		
		
		
		
		