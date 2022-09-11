local tilin = false
local width = 0

function onCreate()
addCharacterToList('furnace', 'dad');
addCharacterToList('starved', 'dad');
setProperty('dad.visible', false)
setProperty('dad.x', -1000);
setProperty('gf.visible', false)
  width = getProperty("stardustFloor3.width") 


 makeLuaSprite('stardustBg3', 'starved/stardustBg3', -1000, -750);
 width = getProperty("stardustBg3.width")    
 setLuaSpriteScrollFactor('stardustBg3', 1, 1);
  scaleObject('stardustBg3', 1, 1);
  addLuaSprite('stardustBg3', false);
  setProperty('stardustBg3.visible', false);
  
  makeLuaSprite('stardustBg4', 'starved/stardustBg4', 3600, -750);
 width = getProperty("stardustBg4.width")    
 setLuaSpriteScrollFactor('stardustBg4', 1, 1);
  scaleObject('stardustBg4', 1, 1);
  addLuaSprite('stardustBg4', false);
  setProperty('stardustBg4.visible', false);
 
 makeLuaSprite('stardustFloor3', 'starved/stardustFloor3', -1000, -1460);
 width = getProperty("stardustFloor3.width")    
 setLuaSpriteScrollFactor('stardustFloor3', 1, 1);
  scaleObject('stardustFloor3', 1, 1);
  addLuaSprite('stardustFloor3', true);
  setProperty('stardustFloor3.visible', false);
  
  makeLuaSprite('stardustFloor4', 'starved/stardustFloor4', 3600, -1460);
 width = getProperty("stardustFloor4.width")    
 setLuaSpriteScrollFactor('stardustFloor4', 1, 1);
  scaleObject('stardustFloor4 ', 1, 1);
  addLuaSprite('stardustFloor4', true);
  setProperty('stardustFloor4.visible', false);
  
  makeLuaSprite('red', 'starved/red', -500, -400);
addLuaSprite('red', true);
scaleObject('red', 2, 2);
setProperty('red.visible', false);


   setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic-gameover')
   setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'prey-death')
   setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'prey-loop')
   setPropertyFromClass('GameOverSubstate', 'endSoundName', 'prey-retry')
end


function onEvent(name,value1,value2)
if name == "sped" then
if value1 == "nor2" then
setProperty('stardustFloor3.visible', true);
setProperty('stardustFloor4.visible', true);
setProperty('stardustBg3.visible', true);
setProperty('stardustBg4.visible', true);
doTweenX('stardustFloor3Tweene', 'stardustFloor3', -5600, 1, 'linear'); 
doTweenX('stardustFloor4Tweene', 'stardustFloor4', -1000, 1, 'linear'); 
doTweenX('stardustBg3Tweene', 'stardustBg3', -5600, 1, 'linear'); 
doTweenX('stardustBg4Tweene', 'stardustBg4', -1000, 1, 'linear'); 
if value1 == "nor2" then
setProperty('stardustFloor.visible', false);
setProperty('stardustFloor2.visible', false);
setProperty('stardustBg.visible', false);
setProperty('stardustBg2.visible', false);
end
end
end

function onTweenCompleted(tag)
if tag == 'stardustFloor3Tweene' then
setProperty("stardustFloor3.x", -1000)
setProperty("stardustFloor4.x", 3600)
setProperty("stardustBg3.x", -1000)
setProperty("stardustBg4.x", 3600)
doTweenX('stardustFloor3Tweene', 'stardustFloor3', -5600, 1, 'linear'); 
doTweenX('stardustFloor4Tweene', 'stardustFloor4', -1000, 1, 'linear'); 
doTweenX('stardustBg3Tweene', 'stardustBg3', -5600, 1, 'linear'); 
doTweenX('stardustBg4Tweene', 'stardustBg4', -1000, 1, 'linear'); 
    end
end

function onUpdate(tag)
if tag == ('stardustFloor3Tweene') then
setProperty("stardustFloor3.x", -1000)
setProperty("stardustFloor4.x", 3600)
setProperty("stardustBg3.x", -1000)
setProperty("stardustBg4.x", 3600)
doTweenX('stardustFloor3Tweene', 'stardustFloor3', -3000, 0.000001, 'linear');
doTweenX('stardustFloor4Tweene', 'stardustFloor4', 500, 0.000001, 'linear');
doTweenX('stardustBg3Tweene', 'stardustBg3', -3000, 0.000001, 'linear');
doTweenX('stardustBg4Tweene', 'stardustBg4', 500, 0.000001, 'linear');
end
end
end


beatHitFuncs = { 
	[1] = function()
	doTweenX('he flying', 'dad', -1570, -100, 'quadInOut')
	end,
	[60] = function()
	setProperty('dad.visible', true)
	doTweenX('reset', 'dad', -300, 1, 'quadInOut')
	end,
	[377] = function()
    doTweenX('gone', 'dad', -700, 2.5, 'quadInOut')
	end,
	[613] = function()
	setProperty('gf.visible', true)
    doTweenX('immagetthatsnussy', 'gf', 2550, 5.5, 'quadInOut')
	end,
	[833] = function()
    doTweenX('obamaout', 'dad', -2550, 3.5, 'quadInOut')
	end,
	[842] = function()
	setProperty('red.visible', true)
	end,
	}

function onBeatHit()
	if beatHitFuncs[curBeat] then 
		beatHitFuncs[curBeat]()
	end
end