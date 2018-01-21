
include( "players.lua" )
local ply = FindMetaTable( "Player" )


function ply:SetDefaults() 
    if n == 0 then
        self:SetPlayerColor( Vector( 0, 0, 1 ) )
        self:SetModel("models/player/police.mdl")
        self:SetRunSpeed( 250 )
        self:SetWalkSpeed( 175 )
        self:SetJumpPower( 200 )
    end
    if n == 1 then
        self:SetPlayerColor(Vector(1, 0, 0))
        self:SetModel("police.mdl")
        self:SetRunSpeed( 275 )
        self:SetWalkSpeed( 180 )
        self:SetJumpPower( 200 )
    end
end

