from os import mkdir
from os.path import exists
from sys import argv

def create_folder(name, path):
	if not exists(path):
		return "Path not found"
	if not exists(path + name):
		mkdir(path + name)
		return path + name + " created"

path = argv[1].replace('\\', '/') + '/'
name = argv[2]
number = argv[3] if len(argv) == 4 else 1

if number == 1:
	print(create_folder(name, path))
else:
	for i in range(1, int(number) + 1):
		print(create_folder(name + str(i), path))
