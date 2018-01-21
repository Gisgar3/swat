AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
--AddCSLuaFile( "teams.lua" )
AddCSLuaFile( "teamselect.lua" )
AddCSLuaFile( "players.lua" )

include( "shared.lua" )
include( "players.lua" )


function GM:PlayerSpawn( ply )
    --ply:KillSilent()
    
    --ply:SetPlayerTeam ( 0 )
    
    --hook.Call( "PlayerLoadout", GAMEMODE, ply )
    --hook.Call( "PlayerSetModel", GAMEMODE, ply )
    --player_manager.SetPlayerClass( ply, "player_swat" )
    --ply:SetupTeam( math.random(0,1) )
    
end

function GM:PlayerDeathThink( ply )
    return 0
end


