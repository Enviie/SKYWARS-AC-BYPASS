--[[
_________               .__                   ____  ___
\_   ___ \___.__.______ |  |__   ___________  \   \/  /
/    \  \<   |  |\____ \|  |  \_/ __ \_  __ \  \     / 
\     \___\___  ||  |_> >   Y  \  ___/|  | \/  /     \ 
 \______  / ____||   __/|___|  /\___  >__|    /___/\  \
        \/\/     |__|        \/     \/              \_/
        
    Made by Enviie easy client AC bypass    
]]
local NormGrav = workspace.Gravity
local Players = game:GetService("Players")
local Me = Players.LocalPlayer or Players.PlayerAdded:Wait()
local mt = getrawmetatable(game)
local OldCall = mt.__namecall
local OldIndex = mt.__index
setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
    local Method = string.lower(getnamecallmethod())
    if Method == "destroy" and self == Me.Character then
        return warn("Attempted to destroy Char") and nil
    end
    return OldCall(self, ...)
end) 
mt.__index = newcclosure(function(self, key)
    if not checkcaller() and tostring(self) == "Humanoid" and key == "WalkSpeed" then
        return 16
    end 
    if not checkcaller() and tostring(self) == "Humanoid" and key == "JumpPower" then
        return 50
    end
    return OldIndex(self, key)
end)
setreadonly(mt, true)
--[[
_________               .__                   ____  ___
\_   ___ \___.__.______ |  |__   ___________  \   \/  /
/    \  \<   |  |\____ \|  |  \_/ __ \_  __ \  \     / 
\     \___\___  ||  |_> >   Y  \  ___/|  | \/  /     \ 
 \______  / ____||   __/|___|  /\___  >__|    /___/\  \
        \/\/     |__|        \/     \/              \_/
        
    Made by Enviie easy client AC bypass    
]]
local NormGrav = workspace.Gravity
local Players = game:GetService("Players")
local Me = Players.LocalPlayer or Players.PlayerAdded:Wait()
local mt = getrawmetatable(game)
local OldCall = mt.__namecall
local NewIndex = mt.__newindex
local OldIndex = mt.__index
setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
    local Method = string.lower(getnamecallmethod())
    if Method == "destroy" and self == Me.Character then
        return warn("Attempted to destroy Char") and nil
    end
    return OldCall(self, ...)
end) 
mt.__index = newcclosure(function(self, key)
    if not checkcaller() and tostring(self) == "Humanoid" and key == "WalkSpeed" then
        return 16
    end 
    if not checkcaller() and tostring(self) == "Humanoid" and key == "JumpPower" then
        return 50
    end
    return OldIndex(self, key)
end)
mt.__newindex = newcclosure(function(self, pog, val)
    if not checkcaller() and self == workspace and pog == "Gravity" then
        return NormGrav
    end
    return NewIndex(self, pog, val)
end)    
setreadonly(mt, true)
