import sys, os, datetime, shutil

timestamp = datetime.datetime.now().strftime("%Y%m%d")
# %I%M%S

for f in sys.argv[1:]:
	components = f.split("/")
	filename = components[-1]
	base = filename.split(".")[0]
	ext = filename.split(".")[-1]
	dir = components[-2]
	if not ext in ["WAV"]:
		continue
	if base in ["MIC1", "MIC2"]:
		filename = "%s-%s.wav" % (base, dir)
		orig_path = f
		dest_dir = "/Users/ryohei/podcast/recorded/%s" % timestamp
		dest_path = "%s/%s" % (dest_dir, filename)
		if not os.path.isdir(dest_dir):
			os.makedirs(dest_dir)
		shutil.copyfile(orig_path, dest_path)
