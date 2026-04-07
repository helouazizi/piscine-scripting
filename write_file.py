

def to_do(tasks):
    with open("output.txt", "w") as f:
        for task in tasks:
            time = task[0].strftime("%A %d %B %Y")
            f.write(f"{time}: {task[1]}\n")