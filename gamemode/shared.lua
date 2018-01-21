GM.Name = "SWAT"
GM.Author = "Ratchet"
GM.Email = "N/A"
GM.Website = "N/A"

--team.SetUp( 0, "SWAT", Color( 0, 0, 255 ) )
--team.SetUp( 1, "Terrorists", Color( 255, 0, 0 ) )
--include( "teams/player_terrorist.lua" )
--include( "teams/player_swat.lua" )
--include( "teamselect.lua" )
include ( "players.lua" )

--include( "players.lua" )
--include( "playerdefaults.lua" )
--include ( "injurytimer.lua" )
if (CLIENT) then
	function GM:InitPostEntity()
		local Frame = vgui.Create( "DFrame" )
		Frame:Center()
		Frame:SetSize( 500, 250 )
		Frame:SetTitle( "TEAM SELECT" )
		Frame:SetDraggable( false )
		Frame:ShowCloseButton( false )
		Frame:MakePopup()
		Frame:SetVisible(true)


		local but_swat = vgui.Create( "DButton", Frame )
		but_swat:SetText( "SWAT Team" )
		but_swat:SetTextColor( Color( 255, 255 , 255 ) )
		but_swat:SetPos( 125, 85 )
		but_swat:SetSize( 100, 70 )
		but_swat.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 255 ) ) 
		end
		
   


		local but_terr = vgui.Create( "DButton", Frame )
		but_terr:SetText( "Terrorist Team" )
		but_terr:SetTextColor( Color( 255, 255 , 255 ) )
		but_terr:SetPos( 250, 85 )
		but_terr:SetSize( 100, 70 )
		but_terr.Paint = function( self, w, h )
			draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 0, 0 ) ) 
		end
		
		function but_swat:OnMousePressed()
            Frame:SetVisible(false)
			net.Start("Gamemode-TeamChange-SWAT")
			net.SendToServer()
            
		end
		
		function but_terr:OnMousePressed()
            Frame:SetVisible(false)
			net.Start("Gamemode-TeamChange-Terr")
			net.SendToServer()
            
		end
	end
else
	util.AddNetworkString("Gamemode-TeamChange-SWAT")
	util.AddNetworkString("Gamemode-TeamChange-Terr")
	
	net.Receive("Gamemode-TeamChange-SWAT", function(_, ply)
		ply:SetPlayerTeam( 'TEAM_SWAT' )
		
	end)
	
	net.Receive("Gamemode-TeamChange-Terr", function(_, ply)
		ply:SetPlayerTeam( 'TEAM_TERR' )
		
	end)
	
	function GM:OnPlayerChangedTeam(ply, _, nTeam)
		
        MsgN( ply:Nick() .. " has changed teams!" )
    
    end
end


function GM:Initialize()
    -- Do stuff
    self.BaseClass.Initialize( self )
   
    -- player_manager.SetPlayerClass( ply, "player_terrorist" )
end

function GM:PlayerSpawn ( ply )
    
    MsgN( ply:Nick() .. " has spawned!" )
   

end

function GM:PlayerHurt (victim, attacker, healthRemaining)

    if (healthRemaining < 61) then
        victim:SetWalkSpeed( 100 )
        victim:SetRunSpeed( 100 )
        victim:SetJumpPower( 0 )
        --timer.Start("injured")
    end
    
end

function GM:ScalePlayerDamage( ply, hitgroup, dmginfo )
	if ( hitgroup == HITGROUP_HEAD ) then
		dmginfo:ScaleDamage( 2 ) 
 	else
		dmginfo:ScaleDamage( 0.50 ) // Less damage when shot anywhere else
	end
end

function GM:PlayerDeath( ply )

    MsgN( ply:Nick() .. " has died." )

end

function GM:OnPlayerChat( ply )
    MsgN( ply:Nick() .. " has given a command to their team.")
    

end