import argparse
import os
import subprocess
import sys
from glob import glob
from os import path

import eyed3

__dirname__ = path.dirname(path.realpath(__file__))

parser = argparse.ArgumentParser()

parser.add_argument('name', type=str)
parser.add_argument('url', type=str)
parser.add_argument('music', type=str)
parser.add_argument('others', nargs='*')
parser.add_argument('-m', action='store_false', help='Skip downloading')

args = parser.parse_args()

name_path: str = args.name
url_path: str = args.url
music_dir: str = args.music

with open(name_path, encoding='utf8') as name_file:
  names = name_file.readlines()
  with open(url_path, encoding='utf8') as url_file:
    urls = url_file.readlines()

    for (name, url) in zip(names, urls):
      name = name.strip().strip('\n')
      url = url.strip().strip('\n')

      # Download
      if args.m:
        print("Downloading")
        subprocess.run(["youtube-dl", "-x", "--audio-quality", "0",
                        "--audio-format", "mp3", "--add-metadata", "-o", f"{music_dir}/{name}.%%(ext)s", url])

# Metadata
for f in glob(path.join(music_dir, '*.mp3')):
  audio = eyed3.load(f)
  print(audio.tag)
