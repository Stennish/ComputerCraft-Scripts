shell.run("init")
print("Started!")
for i=1,4 do
    shell.run("PlaceSeed")
    shell.run("NextRowLeft")
    shell.run("PlaceSeed")
    shell.run("NextRowRight")
    print("Refilling Slot 1...")
    shell.run("refill1")
    print("Continuing...")
end
print("First plot done, moving on to next...")
shell.run("nextplot")
for i=1,4 do
    shell.run("PlaceSeed")
    shell.run("NextRowLeft")
    shell.run("PlaceSeed")
    shell.run("NextRowRight")
    print("Refilling Slot 1...")
    shell.run("refill1")
    print("Continuing...")
end
print("Finished, returning to start point.")
shell.run("return")
print("Done!")