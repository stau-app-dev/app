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


# Note: The path to the directory containing the images must be specified
#   is based on where the script is run from.
#   For example, if the script is run from the root directory of the project,
#   the path to the directory containing the images is "./data/images".

path = "./assets/profile_pics/"
randomize_files(path)
