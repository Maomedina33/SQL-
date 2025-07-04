import time


seconds = 0
minutes = 0
hours = 0

    
def validate(type, limit):
    if type == limit - 1:
        type = 0
    else:
        type += 1
    return type
        

while True:
    seconds = validate(seconds, 60)
    if seconds == 0:
        minutes = validate(minutes, 60)
        if minutes == 0:
            hours = validate(hours, 24)
    print(f'{hours}:{minutes}:{seconds}')
    time.sleep(1)