
--include ( "teams.lua" )
include ( "players.lua" )
include ( "init.lua" )



-- local Frame = vgui.Create( "DFrame" )
-- Frame:Center()
-- Frame:SetSize( 500, 250 )
-- Frame:SetTitle( "TEAM SELECT" )
-- Frame:SetDraggable( false )
-- Frame:ShowCloseButton( false )
-- Frame:MakePopup()


-- local but_swat = vgui.Create( "DButton", Frame )
-- but_swat:SetText( "SWAT Team" )
-- but_swat:SetTextColor( Color( 255, 255 , 255 ) )
-- but_swat:SetPos( 125, 85 )
-- but_swat:SetSize( 100, 70 )
-- but_swat.Paint = function( self, w, h )
-- 	draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 255 ) ) 
-- end
-- function but_swat:OnMousePressed()
-- 	ply:SetPlayerTeam( 0 )
-- 	Frame:SetVisible( false )
-- end 
   


-- local but_terr = vgui.Create( "DButton", Frame )
-- but_terr:SetText( "Terrorist Team" )
-- but_terr:SetTextColor( Color( 255, 255 , 255 ) )
-- but_terr:SetPos( 250, 85 )
-- but_terr:SetSize( 100, 70 )
-- but_terr.Paint = function( self, w, h )
-- 	draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 0, 0 ) ) 
-- end
-- function but_terr:OnMousePressed()
-- 	ply:SetPlayerTeam( 1 )
-- 	Frame:SetVisible( false )
-- end 

-- if (CLIENT) then
-- 	function GM:InitPostEntity()
-- 		local Frame = vgui.Create( "DFrame" )
-- 		Frame:Center()
-- 		Frame:SetSize( 500, 250 )
-- 		Frame:SetTitle( "TEAM SELECT" )
-- 		Frame:SetDraggable( false )
-- 		Frame:ShowCloseButton( false )
-- 		Frame:MakePopup()
-- 		Frame:SetVisible(true)


-- 		local but_swat = vgui.Create( "DButton", Frame )
-- 		but_swat:SetText( "SWAT Team" )
-- 		but_swat:SetTextColor( Color( 255, 255 , 255 ) )
-- 		but_swat:SetPos( 125, 85 )
-- 		but_swat:SetSize( 100, 70 )
-- 		but_swat.Paint = function( self, w, h )
-- 			draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 255 ) ) 
-- 		end
		
   


-- 		local but_terr = vgui.Create( "DButton", Frame )
-- 		but_terr:SetText( "Terrorist Team" )
-- 		but_terr:SetTextColor( Color( 255, 255 , 255 ) )
-- 		but_terr:SetPos( 250, 85 )
-- 		but_terr:SetSize( 100, 70 )
-- 		but_terr.Paint = function( self, w, h )
-- 			draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 0, 0 ) ) 
-- 		end
		
-- 		function but_swat:OnMousePressed()
-- 			net.Start("Gamemode-TeamChange-SWAT")
-- 			net.SendToServer()
-- 		end
		
-- 		function but_terr:OnMousePressed()
-- 			net.Start("Gamemode-TeamChange-Terr")
-- 			net.SendToServer()
-- 		end
-- 	end
-- else
-- 	util.AddNetworkString("Gamemode-TeamChange-SWAT")
-- 	util.AddNetworkString("Gamemode-TeamChange-Terr")
	
-- 	net.Receive("Gamemode-TeamChange-SWAT", function(_, pPlayer)
-- 		pPlayer:SetTeam(TEAM_SWAT)
-- 		Frame:SetVisible(false)
-- 	end)
	
-- 	net.Receive("Gamemode-TeamChange-Terr", function(_, pPlayer)
-- 		pPlayer:SetTeam(TEAM_TERR)
-- 		Frame:SetVisible(false)
-- 	end)
	
-- 	function GM:OnPlayerChangedTeam(pPlayer, _, nTeam)
		
--     	if (nTeam == TEAM_SWAT) then
        
--         	self:SetPlayerColor( Vector( 0, 0, 1 ) )
--         	self:SetModel("models/player/police.mdl")
--         	self:SetRunSpeed( 250 )
--         	self:SetWalkSpeed( 175 )
--        	 	self:SetJumpPower( 200 )
--         	self:Give("weapon_pistol")
--         	self:SetupHands()
--     	end
--     	if (nTeam == TEAM_TERR) then
        
--         	self:SetPlayerColor(Vector(1, 0, 0))
--         	self:SetModel("models/player/police.mdl")
--         	self:SetRunSpeed( 275 )
--         	self:SetWalkSpeed( 180 )
--         	self:SetJumpPower( 200 )
--         	self:SetupHands()
--     	end
-- 	end
-- end


