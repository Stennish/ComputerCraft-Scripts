init()
print("Started!")
for i=1,4 do -- Fill first plot
    PlaceSeed()
    NextLeft()
    PlaceSeed()
    NextRight()
    print("Refilling Slot 1...")
    Refill()
    print("Continuing...")
end
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
Return()
print("Done!")

-- Functions below












function NextPlot() -- Move onto the Next Plot
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
end

function NextLeft() -- Go to next row on the left
    turtle.turnLeft()
    turtle.forward()
    turtle.turnLeft()
end

function NextRight() -- Go to next row on the right
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
end

function PlaceSeed() -- Place seeds and go forward.
    for i=1,16 do
        turtle.placeDown()
        turtle.forward()
        turtle.placeDown()
    end
end

function Return() -- Go back to starting position.
    turtle.turnRight()
    for i=1,18 do
        turtle.forward()
    end
    turtle.turnLeft()
    turtle.back()
    turtle.down()
end

function init() -- Prepare for Replanting.
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

function Refill() -- Go through all slots, refilling Slot 1.
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
