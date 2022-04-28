from string import ascii_lowercase
from random import choice, randint, random
import os

# Randomizes the file names of all files in specified directory.
def randomize_files(dir):
    for f in os.listdir(dir):
        path = os.path.join(dir, f)
        if os.path.isfile(path):
            newpath = os.path.join(
                dir,
                "".join([choice(ascii_lowercase) for _ in range(randint(8, 8))])
                + ".jpg",
            )
            os.rename(path, newpath)
            print("rename {} to {}".format(path, newpath))


randomize_files("../../assets/profile_pics/")
