

local ply = FindMetaTable( "Player" )

local teams = {}

teams[0] = {
    name = "SWAT",
    color = Vector( 0, 0, 1.0 ),
    weapons = {} }

teams[1] = {
    name = "Terrorists",
    color = Vector( 1.0, 0, 0 ),
    weapons = {} }


function ply:SetGamemodeTeam ( n ) 
    if ( not teams[n] ) then return end

    self:SetTeam( n )



end

