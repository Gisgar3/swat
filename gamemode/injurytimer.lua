local ply = FindMetaTable( "Player" )
function injurytimer()
    
    local ent = Entity( 1 )
    if ent:IsPlayer() then
        ent:SetHealth(ent:Health() - 10)
    end
    timer.Stop("injury")
    
end


timer.Create("injured", 10, 3, injurytimer)