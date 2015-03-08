--exemple : list.lua
l = file.list();
    for k,v in pairs(l) do
      print("name:"..k..", size:"..v)
    end

-- print "hello world" every 1000ms
tmr.alarm(0, 1000, 1, function() print("hello world") end )



