from os.path import isfile, exists
from sys import argv

def create_file(name, path):
	if not exists(path):
		return "Path not found"
	if not isfile(path + name):
		open(path + name, 'x')
		return path + name + " created"

path = argv[1].replace('\\', '/') + '/'
name = argv[2]
extension = '.' + argv[3]
number = argv[4] if len(argv) == 5 else 1

if number == 1:
	print(create_file(name + extension, path))
else:
	for i in range(1, int(number) + 1):
		print(create_file(name + str(i) + extension, path))
