import glob
import os

flist = glob.glob('*.png')
flist.sort()
for f in flist:
    # os.rename(f,f.replace("10", "0T"))
    # os.rename(f,f.replace("11", "0J"))
    # os.rename(f,f.replace("12", "0Q"))
    # os.rename(f,f.replace("13", "0K"))
    
    if "club" in f:
        os.rename(f,f[11] + "c.png")
    elif "diamond" in f:
        os.rename(f, f[14] + "d.png")
    elif "heart" in f:
        os.rename(f,f[12] + "h.png")
    elif "spade" in f:
        os.rename(f,f[12] + "s.png")
