import subprocess

def bash(command):
	output = subprocess.Popen([command], shell=True,
		stdout=subprocess.PIPE).communicate()[0]
	return output

def main():
	print 'a'
	return 0

if __name__ == '__main__':
	main()

