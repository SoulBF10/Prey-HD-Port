local tilin = false
local width = 0

function onCreate()
makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');
	addLuaSprite('readthefiletitlelol', true);
makeLuaSprite('introcircle', 'StartScreens/Circle-prey', -400, 0);
	setObjectCamera('introcircle', 'other');
	addLuaSprite('introcircle', true);
	makeLuaSprite('introtext', 'StartScreens/Text-prey', -100, 0);
	setObjectCamera('introtext', 'other');
	addLuaSprite('introtext', true);
 makeLuaSprite('furnace_gotcha', 'starved/furnace_gotcha', 2500, 490);
addLuaSprite('furnace_gotcha', false);
scaleObject('furnace_gotcha', 5, 5);
setProperty('furnace_gotcha.visible', false);
  width = getProperty("stardustFloor.width") 


 makeLuaSprite('stardustBg', 'starved/stardustBg', -1000, -750);
 width = getProperty("stardustBg.width")    
 setLuaSpriteScrollFactor('stardustBg', 1, 1);
  scaleObject('stardustBg', 1, 1);
  addLuaSprite('stardustBg', false);
  setProperty('stardustBg.visible', false);
  
  makeLuaSprite('stardustBg2', 'starved/stardustBg2', 3600, -750);
 width = getProperty("stardustBg2.width")    
 setLuaSpriteScrollFactor('stardustBg2', 1, 1);
  scaleObject('stardustBg2', 1, 1);
  addLuaSprite('stardustBg2', false);
  setProperty('stardustBg2.visible', false);
 
 makeLuaSprite('stardustFloor', 'starved/stardustFloor', -1000, -1460);
 width = getProperty("stardustFloor.width")    
 setLuaSpriteScrollFactor('stardustFloor', 1, 1);
  scaleObject('stardustFloor', 1, 1);
  addLuaSprite('stardustFloor', true);
  setProperty('stardustFloor.visible', false);
  
  makeLuaSprite('stardustFloor2', 'starved/stardustFloor2', 3600, -1460);
 width = getProperty("stardustFloor2.width")    
 setLuaSpriteScrollFactor('stardustFloor2', 1, 1);
  scaleObject('stardustFloor2 ', 1, 1);
  addLuaSprite('stardustFloor2', true);
  setProperty('stardustFloor2.visible', false);
  
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
if name == "esotilin" then
if value1 == "jeje" then
setProperty('stardustFloor.visible', true);
setProperty('stardustFloor2.visible', true);
setProperty('stardustBg.visible', true);
setProperty('stardustBg2.visible', true);
doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5 , 'linear'); 
end
end
end

function onTweenCompleted(tag)
if tag == 'stardustFloorTweene' then
setProperty("stardustFloor.x", -1000)
setProperty("stardustFloor2.x", 3600)
setProperty("stardustBg.x", -1000)
setProperty("stardustBg2.x", 3600)
doTweenX('stardustFloorTweene', 'stardustFloor', -5600, 1.5, 'linear'); 
doTweenX('stardustFloor2Tweene', 'stardustFloor2', -1000, 1.5, 'linear'); 
doTweenX('stardustBgTweene', 'stardustBg', -5600, 1.5, 'linear'); 
doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 1.5, 'linear'); 
    end
end

function onUpdate(tag)
if tag == ('stardustFloorTweene') then
setProperty("stardustFloor.x", -1000)
setProperty("stardustFloor2.x", 3600)
setProperty("stardustBg.x", -1000)
setProperty("stardustBg2.x", 3600)
doTweenX('stardustFloorTweene', 'stardustFloor', -3000, 0.000001, 'linear');
doTweenX('stardustFloor2Tweene', 'stardustFloor2', 500, 0.000001, 'linear');
doTweenX('stardustBgTweene', 'stardustBg', -5600, 15, 'linear');
doTweenX('stardustBg2Tweene', 'stardustBg2', -1000, 15, 'linear');
end
end

function onStartCountdown()
	doTweenX('circleTween', 'introcircle', 30, 2, 'quintOut')
	doTweenX('textTween', 'introtext', 100, 2, 'quintOut')
    return Function_Continue
end
	

function onSongStart()
	doTweenAlpha('graphicAlpha', 'readthefiletitlelol', 0, 0.2, 'quintOut');
	doTweenAlpha('circleAlpha', 'introcircle', 0, 0.2, 'quintOut');
	doTweenAlpha('textAlpha', 'introtext', 0, 0.2, 'quintOut');

end