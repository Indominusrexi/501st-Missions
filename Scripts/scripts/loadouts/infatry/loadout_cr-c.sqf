///////////////////////////////////////////////////////////////
// 501st Legion - Loadout Script
// File: loadout_cr-c.sqf
// By: CC Cruisie
// Creation Date: 01/15/2018
// 
// Change Log:
// 1-16-2018: Comment Out therma+
// 2-27-2018: Fixed name of loadout
//
///////////////////////////////////////////////////////////////
///////////// /\/ ( ) T E S ///////////////////////////////////
// Place this code in the init.sqf.
// nameofbox addAction ["Clone Cadet Loadout", "scripts\loadouts\infatry\loadout_cr-c.sqf"];
//
// Place this code in the init field of selected unit:
// this disableai "move"; nop = [this] execVM "scripts\loadouts\infatry\loadout_cr-c.sqf";
///////////////////////////////////////////////////////////////

if (!local _unit) exitWith {};

comment "Exported from Arsenal by CC Cruisie";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "SWOP_Clonetrooper_F_CombatUniform";
//player addItemToUniform "ACE_fieldDressing";
//player addItemToUniform "ACE_packingBandage";
//player addItemToUniform "ACE_morphine";
//player addItemToUniform "ACE_tourniquet";
//for "_i" from 1 to 2 do {player addItemToUniform "SWOP_termDet_G";};
player addVest "SWOP_Clonetrooper_armor";
player addHeadgear "SWOP_Clonetrooper_helmet";
player addGoggles "SWOP_Clones_HUD";

comment "Add weapons";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_4";
player linkItem "ItemGPS";

comment "Set identity";
//player setFace "TanoanHead_A3_02";
//player setSpeaker "ace_novoice";
