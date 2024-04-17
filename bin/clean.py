#!/usr/bin/env python3
import os
import glob
import shutil


with open(os.environ.get("IGNORE_FILE", ".stglobalignore")) as f:
    lines = f.readlines()

lines = [line.strip() for line in lines]

to_be_removed = []
for line in lines:
    if line.startswith("//"):
        continue
    if line.startswith("(?d)"):
        pattern = line.replace("(?d)", "**/")
    elif line.startswith("*"):
        pattern = "**/" + line
    else:
        pattern = line
    result = glob.glob(pattern, recursive=True)
    to_be_removed.extend(result)

print("To be removed:")
print("====")
for f in to_be_removed:
    print(f)

answer = input("Continue removal? YES/NO\n")
if answer == "YES":
    for f in to_be_removed:
        try:
            if os.path.isdir(f):
                shutil.rmtree(f)
            elif os.path.exists(f):
                os.remove(f)
        except:
            print("Failed to remove %s" % f)
