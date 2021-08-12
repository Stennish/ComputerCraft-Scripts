local function printUsage()
    print( "Usage:" )
    print( "Replant <number of plots (maximum 2)")
end
local choice = io.read()
local boolean1 = true
local boolean0 = false
if choice == "1" then
    init()
    Plot1()
elseif choice == "2" then
    init()
    Plot1()
    Plot2()
end
-- note to self: get ^this^ goddamn garbage to work.

-- main code
--init()
--print("Started!")
--for i=1,4 do -- Fill first plot
--    PlaceSeed()
--    NextLeft()
--    PlaceSeed()
--    NextRight()
--    print("Refilling Slot 1...")
--    Refill()
--    print("Continuing...")
--end
--print("First plot done, moving on to next...")
--NextPlot()
--for i=1,4 do -- Fill second plot
--    PlaceSeed()
--    NextLeft()
--    PlaceSeed()
--    NextRight()
--    print("Refilling Slot 1...")
--    Refill()
--    print("Continuing...")
--end
--print("Finished, returning to start point.")
--Return()
--print("Done!")

-- Functions below











local function NextPlot() -- Move onto the Next Plot
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
end

local function NextLeft() -- Go to next row on the left
    turtle.turnLeft()
    turtle.forward()
    turtle.turnLeft()
end

local function NextRight() -- Go to next row on the right
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
end

local function PlaceSeed() -- Place seeds and go forward.
    for i=1,16 do
        turtle.placeDown()
        turtle.forward()
        turtle.placeDown()
    end
end

local function Return() -- Go back to starting position.
    turtle.turnRight()
    for i=1,18 do
        turtle.forward()
    end
    turtle.turnLeft()
    turtle.back()
    turtle.down()
end

local function Return1() -- Go back to starting position. [1 Plot]
    turtle.turnLeft()
    for i=1,8 do
        turtle.forward()
    end
    turtle.turnLeft()
    turtle.back()
    turtle.down()
end
local function Return2() -- Go back to starting position. [2 Plots]
    turtle.turnRight()
    for i=1,18 do
        turtle.forward()
    end
    turtle.turnLeft()
    turtle.back()
    turtle.down()
end
local function Plot1()
    for i=1,4 do -- Fill first plot
        PlaceSeed()
        NextLeft()
        PlaceSeed()
        NextRight()
        print("Refilling Slot 1...")
        Refill()
        print("Continuing...")
    end
    print("Finished, returning to start point.")
    Return1()
    print("Done!")
    print("Done!")end

local function Plot2()
    print("First plot done, moving on to next...")
    NextPlot()
    for i=1,4 do -- Fill second plot
        PlaceSeed()
        NextLeft()
        PlaceSeed()
        NextRight()
        print("Refilling Slot 1...")
        Refill()
        print("Continuing...")
    end
    print("Finished, returning to start point.")
    Return2()
    print("Done!")
end

local function init() -- Prepare for Replanting.
    print("Initializing...")
    os.sleep(0.5)
    print("Getting in position...")
    os.sleep(0.5)
    turtle.up()
    os.sleep(1)
    turtle.forward()
    os.sleep(1.5)
    print("In position.")
    os.sleep(1)
    print("Preparing Inventory...")
    Refill()
end

local function Refill() -- Go through all slots, refilling Slot 1.
    turtle.select(16)
    turtle.transferTo(1)
    turtle.select(15)
    turtle.transferTo(1)
    turtle.select(14)
    turtle.transferTo(1)
    turtle.select(13)
    turtle.transferTo(1)
    turtle.select(12)
    turtle.transferTo(1)
    turtle.select(11)
    turtle.transferTo(1)
    turtle.select(10)
    turtle.transferTo(1)
    turtle.select(9)
    turtle.transferTo(1)
    turtle.select(8)
    turtle.transferTo(1)
    turtle.select(7)
    turtle.transferTo(1)
    turtle.select(6)
    turtle.transferTo(1)
    turtle.select(5)
    turtle.transferTo(1)
    turtle.select(4)
    turtle.transferTo(1)
    turtle.select(3)
    turtle.transferTo(1)
    turtle.select(2)
    turtle.transferTo(1)
    turtle.select(1)
end
