function onEvent(name, value1, value2)
    local var string = (value1)
    local var color = (value2)
    if name == "FurnaceLyrics" then

        makeLuaText('captions', 'Lyrics go here', 1000, 150, 620)
        setTextString('captions',  '' .. string)
        setTextFont('captions', 'fnf.ttf')
        setTextColor('FFA500', FFA500)
        setTextSize('captions', 35);
        addLuaText('captions')
	setObjectCamera('captions', 'other');
        setTextAlignment('captions', 'center')
        --removeLuaText('captions', true)
        
    end
end

