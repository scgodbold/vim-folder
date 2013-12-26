import subprocess

def bash(command):
	output = subprocess.Popen([command], shell=True,
		stdout=subprocess.PIPE).communicate()[0]
	return output

def main():
	# Lets start this off by registering all the submodules
	bash("git submodule init")
	bash("git submodule update")
	bash("git submodule foreach git submodule init")
	bash("git submodule foreach git submodule update")
	return 0

if __name__ == '__main__':
	main()

