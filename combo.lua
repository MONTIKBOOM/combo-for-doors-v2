--Anti Eyes
local mt = getrawmetatable(game);
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(remote,...)
   args = {...}
   method = tostring(getnamecallmethod())
   if method == "FireServer" and tostring(remote) == "MotorReplication" then
       args[2] = 90
       return old(remote,unpack(args))
   end
   return old(remote,...)
end)
setreadonly(mt,true)

--Nerd V3
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/DoorsV3_ByNerd.lua"))()

--by MONTIKBOOM
