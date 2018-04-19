-----------------------------------------------------------------------------------------
--
-- Faiyaz Hossain
-- 2018-04-19
--
-----------------------------------------------------------------------------------------

local dPad = display.newImage( "dpad/d-pad.png" )
dPad.x = 150
dPad.y = display.contentHeight - 150
dPad.id = "d-pad"

local upArrow = display.newImage( "dpad/upArrow.png" )
upArrow.x = 150
upArrow.y = display.contentHeight - 260
upArrow.id = "up arrow"

local theGuy = display.newImage( "dpad/guy.png" )
theGuy.x = display.contentCenterX
theGuy.y = display.contentCenterY
theGuy.id = "the character"
 

local downArrow = display.newImage( "dpad/downArrow.png" )
downArrow.x = 150
downArrow.y = display.contentHeight - 40
downArrow.id = "up arrow"

local rightArrow = display.newImage( "dpad/rightArrow.png" )
rightArrow.x = 260
rightArrow.y = display.contentHeight - 150
rightArrow.id = "up arrow"

local leftArrow = display.newImage( "dpad/leftArrow.png" )
leftArrow.x = 40
leftArrow.y = display.contentHeight - 150
leftArrow.id = "up arrow"

 


function upArrow:touch( event )

    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theGuy, { 
        	x = 0, -- move 0 in the x direction 
        	y = -50, -- move up 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )

        
    end

    return true
end

function upArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- moves character up
        transition.moveBy( theGuy, { 
        	x = 0, -- move 0 pixels horizontally
        	y = -50, -- move 50 pixels up
        	time = 100 -- move in 100 milliseconds
        	} )
    end

    return true
end

function downArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- moves character down
        transition.moveBy( theGuy, { 
        	x = 0, -- move 0 pixels horizontally
        	y = 50, -- move 50 pixels down
        	time = 100 -- move in 100 milliseconds
        	} )
    end

    return true
end

function rightArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- moves character right
        transition.moveBy( theGuy, { 
        	x = 50, -- move 50 pixels right
        	y = 0, -- move 0 pixels vertically
        	time = 100 -- move in 100 milliseconds
        	} )
    end

    return true
end

function leftArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- moves character left
        transition.moveBy( theGuy, { 
        	x = - 50, -- move 50 pixels left
        	y = 0, -- move 0 pixels vertically
        	time = 100 -- move in 100 milliseconds
        	} )
    end

    return true
end


upArrow:addEventListener( "touch", upArrow )
downArrow:addEventListener( "touch", downArrow )
rightArrow:addEventListener( "touch", rightArrow )
leftArrow:addEventListener( "touch", leftArrow )