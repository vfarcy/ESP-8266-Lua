--init.lua
--Last version of the firmware @ https://github.com/nodemcu/nodemcu-firmware/tree/master/pre_build
print("set up wifi mode")
wifi.setmode(wifi.STATION)
wifi.sta.config("soussol","")
 --here SSID and PassWord should be modified according your wireless router
wifi.sta.connect()
tmr.alarm(1, 1000, 1, function() 
    if wifi.sta.getip()== nil then 
         print("IP unavaiable, Waiting...") 
    else 
     tmr.stop(1)
     print("Config done, IP is "..wifi.sta.getip())
     wifi.sta.getap(listap)     
     dofile("dofile.lua")
    end 
 end)

-- print ap list
function listap(t)
  for k,v in pairs(t) do
    print(k.." : "..v)
  end
end


