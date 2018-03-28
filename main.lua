-----------------------------------------------------------------------------------------
--Title: Interacting Objects 2
--Name: Bassim Hawa
--Course: ICS20
-----------------------------------------------------------------------------------------

-- Hide status bar
display.setStatusBar(display.HiddenStatusBar)

--load physics
local physics = require("physics")

--start physics
physics.start()

----------------------------------------------------------------------------------------------------------------------------------------
--Objects
----------------------------------------------------------------------------------------------------------------------------------------
--Ground
local ground = display.newImage("Images/ground.png")

	--set the x and y pos
	ground.x = display.contentCenterX
	ground.y = display.contentHeight

	--change the width to be the same as the screen
	ground.width = display.contentWidth

	--add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

----------------------------------------------------------------------------------------------------------------------------------------

--create a vertical beam
local beam = display.newImage("Images/beam.png", 0, 0)

	--set the x and y pos
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	--set the beam size
	beam.width = display.contentWidth/2
	beam.height = display.contentHeight/10

	--rotate the beam -60 degrees so its on an angle
	beam:rotate(45)

	--ad to physics
	physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

--create bkg
local bkg = display.newImage("Images/bkg.png", 0, 0)
	
	--set the x and y pos
	bkg.x = display.contentCenterX
	bkg.y = display.contentCenterY

	--set the bkg size
	bkg.width =  display.contentWidth
	bkg.height = display.contentHeight

	--send to back
	bkg:toBack()
----------------------------------------------------------------------------------------------------------------------------------------
--FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------

--create the first ball
local function firstBall()
	--creating the first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end
----------------------------------------------------------------------------------------------------------------------------------------

--create the second ball
local function secondBall()
	--creating the first ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	--make it smaller than the original size
	ball2:scale(0.5, 0.5)
end
----------------------------------------------------------------------------------------------------------------------------------------

--create the third ball
local function thirdBall()
	--creating the third ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball3, {density=1.0, friction=0.5, bounce=0.3, radius=50})

	--make it larger than the original size
	ball3:scale(2, 2)
end
----------------------------------------------------------------------------------------------------------------------------------------

--create the fourth ball
local function fourthBall()
	--creating the fourth ball
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball4, {density=1.0, friction=0.5, bounce=0.3, radius=100})

	--make it larger than the original size
	ball4:scale(4, 4)
end

----------------------------------------------------------------------------------------------------------------------------------------
--TIMER DELAYS - call each function after the given millisecond
----------------------------------------------------------------------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 100, thirdBall)
timer.performWithDelay( 300, fourthBall)