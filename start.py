from text import TextHelpers as msg

print(msg.init)
#------------------|---------------------------------------------------------------
# HELPING FUNCS    |
#------------------|---------------------------------------------------------------
def road(entry):
    match entry:
        case "help":
            print(msg.help)
        case "exit":
            exit()
        case _:
            pass

#------------------|---------------------------------------------------------------
# MAIN PROGRAM     |
#------------------|---------------------------------------------------------------
while True:
    put_command = input("Spirit >> ")
    road(put_command)