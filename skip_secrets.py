import sys


def skip_secrets(file_path):
    with open(file_path, "r") as file:
        if not file.readable():
            sys.exit(1)
        out = open("out.txt", "w")
        for line in file:
            if "pineapple" in line:
                continue
            out.write(line)
        out.close()
            


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(1)
        
    skip_secrets(sys.argv[1])
