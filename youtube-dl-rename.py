import argparse
import os
import re
import subprocess
import sys
from glob import glob
from os import path

import eyed3

__dirname__ = path.dirname(path.realpath(__file__))

parser = argparse.ArgumentParser()

parser.add_argument('music', type=str, nargs='?')
parser.add_argument('others', nargs='*')

args = parser.parse_args()

MUSIC_DIR = path.join(os.environ.get("USERPROFILE"), "Music/youtube-dl")

# if args.music is not None:
#   # Split names and urls
#   with open(args.music, encoding="utf-8") as f:
#     pass

#   # Create Music directory and delete contents
#   try:
#     os.mkdir(MUSIC_DIR, 0o777)
#   except FileExistsError:
#     for f in glob(path.join(MUSIC_DIR, ".*")):
#       os.remove(f)

#   # Download
#   for (name, url) in zip(names, urls):
#     name = name.strip().strip('\n')
#     url = url.strip().strip('\n')

#     # Download
#     if not args.m:
#       print("Downloading")
#       subprocess.run(["youtube-dl", "-x", "--audio-quality", "0",
#                       "--audio-format", "mp3", "--add-metadata", "-o", f"{MUSIC_DIR}/{name}.%%(ext)s", url])

artistSplit = re.compile(r"[&,]")

# Metadata
for f in glob(path.join(MUSIC_DIR, '*.mp3')):
  audio = eyed3.load(f)

  # Extract artist and title
  with open(f) as f_:
    [artist, title] = path.basename(f_.name).strip('.mp3').split(" - ")
    artist = artistSplit.sub("/", artist)
    title = title.strip().strip('[replace]').strip()
    print(artist)

    # Write metadata
    audio.tag.artist = artist
    audio.tag.title = title

    audio.tag.save()
