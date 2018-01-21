DEFINE_BASECLASS( "player_default" )

local PLAYER = {}

--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
--
PLAYER.WalkSpeed 			= 100
PLAYER.RunSpeed				= 300

function PLAYER:Loadout()

	self.Player:RemoveAllAmmo()

	self.Player:GiveAmmo( 256, 	"Pistol", 		true )
	self.Player:Give( "weapon_pistol" )
	
end
function GM:PlayerLoadout( ply )

	player_manager.RunClass( ply, "Loadout" )
	
end

function GM:PlayerSetModel( ply )
	ply:SetModel( "models/player/police.mdl" )

end

player_manager.RegisterClass( "player_swat", PLAYER, "player_default" )

