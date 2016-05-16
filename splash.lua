local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE unless "composer.removeScene()" is called
-- -----------------------------------------------------------------------------------------------------------------

-- Local forward references should go here

-- -------------------------------------------------------------------------------


-- "scene:create()"
function scene:create( event )

    local sceneGroup = self.view
    local screenWidth, screenHeight = display.contentWidth, display.contentHeight
    local screenCenter = { x = screenWidth / 2, y = screenHeight / 2 }
    --local corridor = display.newImageRect( "assets/corridor.png", 720, 1280 )
    --corridor.x = screenWidth / 2
    --corridor.y = screenHeight / 2
    local titleText = display.newText({x=screenCenter.x , y=screenCenter.y - 400 , text="WALL BUSTER" ,fontSize=80,font=native.systemFontBold})
    local titleText2 = display.newText({x=screenCenter.x , y=screenCenter.y + 400 , text="ANIRUDH & ABDUL" ,fontSize=80,font=native.systemFontBold})
    sceneGroup:insert(titleText)
    sceneGroup:insert(titleText2)
    local icon = display.newImageRect( "assets/icon.png", 400, 400)
    icon.x = screenWidth / 2
    icon.y = screenHeight / 2
    sceneGroup:insert(icon)
    -- Initialize the scene here
    -- Example: add display objects to "sceneGroup", add touch listeners, etc.
end


-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is still off screen (but is about to come on screen)
    elseif ( phase == "did" ) then
        -- Called when the scene is now on screen
        -- Insert code here to make the scene come alive
        -- Example: start timers, begin animation, play audio, etc.
        timer.performWithDelay( 3000, 
            function()
                composer.gotoScene( "start" )
            end
        );
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen)
        -- Insert code here to "pause" the scene
        -- Example: stop timers, stop animation, stop audio, etc.
    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen
    end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view

    -- Called prior to the removal of scene's view
    -- Insert code here to clean up the scene
    -- Example: remove display objects, save state, etc.
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------

return scene