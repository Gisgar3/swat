local ply = FindMetaTable( "Player" )

AddCSLuaFile("entities/weapons/m4a1.lua")



function ply:SetPlayerTeam ( n )
    

    
    

    if (n == 'TEAM_SWAT') then
        
        self:SetPlayerColor( Vector( 0, 0, 1 ) )
        self:SetModel("models/player/police.mdl")
        self:SetRunSpeed( 250 )
        self:SetWalkSpeed( 175 )
        self:SetJumpPower( 200 )
        self:Give("m4a1")
        self:SetupHands()
    end
    if (n == 'TEAM_TERR') then
        
        self:SetPlayerColor(Vector(1, 0, 0))
        self:SetModel("models/player/police.mdl")
        self:SetRunSpeed( 275 )
        self:SetWalkSpeed( 180 )
        self:SetJumpPower( 200 )
        self:SetupHands()
    end
end

