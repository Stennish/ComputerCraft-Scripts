shell.run("init")
for i=1,8 do
    shell.run("Plant24")
    shell.run("NextRowLeft")
    shell.run("Plant23")
    shell.run("NextRowRight")
    print("Refilling Slot 1...")
    shell.run("Refill")
    print("Continuing...")
end
shell.run("Return")
print("Done!")