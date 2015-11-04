-- Lesson4B

-- Created by: Mr Coxall
-- Created on: Nov 2013
-- Created for: ICS2O
-- This program displays an image and let the user move it with their finger

-- variables local to entire file
local beetle
local planet

-- Use this function to perform your initial setup
function setup()
    -- setup display and drawing functions
    supportedOrientations(LANDSCAPE_ANY)    
    --displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    --sprite("SpaceCute:Beetle Ship")
    beetle = SpriteObject("SpaceCute:Beetle Ship", vec2(WIDTH/2, HEIGHT/2 +200))
    planet = SpriteObject("SpaceCute:Planet", vec2(WIDTH/2, HEIGHT/2 - 100))
end

-- This function gets called once every frame
function touched(touch)
    
    -- local varaibles
    beetle:touched(touch)
    planet:touched(touch)
    
    if (beetle:isTouching(planet) == true) then
        print("touching")
    else
        print("not touching")
    end
end

-- This function gets called once every frame
function draw()
    
    -- local varaibles
    
    -- This sets a dark background color 
    background(0, 0, 0, 255)
    beetle:draw()
    planet:draw()
end