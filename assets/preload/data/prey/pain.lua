function onCreate()
 makeLuaSprite('furnace_gotcha', 'starved/furnace_gotcha', 2500, 490);
addLuaSprite('furnace_gotcha', false);
scaleObject('furnace_gotcha', 5, 5);
setProperty('furnace_gotcha.visible', false);
end


function onEvent(name,value1,value2)
if name == "esotilin" then
if value1 == "gotcha" then
setProperty('furnace_gotcha.visible', true)
doTweenX('gotcha', 'furnace_gotcha', 1130, 0.3, 'linear')
end
end
end