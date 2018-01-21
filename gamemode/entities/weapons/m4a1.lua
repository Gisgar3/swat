SWEP.Author = "Ratchet"
SWEP.Contact = "N/A"
SWEP.Purpose = "Used in 'SWAT' gamemode."
SWEP.Instructions = "LeftMouse = Primary Fire"
SWEP.Category = "Weapons"
SWEP.Spawnable = true 
SWEP.AdminSpawnable = true

SWEP.ViewModel = Model("v_rif_m4a1.mdl")
SWEP.WorldModel = Model("w_rif_m4a1.mdl")
SWEP.HoldType = "crossbow"

SWEP.Primary.ClipSize = 36
SWEP.Primary.DefaultClip = 36
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "SMG1"
local ShootSound = Sound( "sounds/m4a1-1.wav" )

if (!SERVER) then 
 
	
	
 
	
	SWEP.Weight = 5
 
	
	SWEP.AutoSwitchTo = false
	SWEP.AutoSwitchFrom = false
 
elseif (!CLIENT) then 
 
	
	SWEP.PrintName = "SWAT M4A1"
 
	
	SWEP.Slot = 4
	SWEP.SlotPos = 1
 
	SWEP.DrawAmmo = true
 
	SWEP.DrawCrosshair = false
end


function SWEP:PrimaryAttack()

	self:EmitSound( ShootSound )

end

function SWEP:Initialize()

     self:SetHoldType(self.HoldType)

end