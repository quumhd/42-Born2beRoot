This project has been created as part of the 42 curriculum by jdreissi

We had to created a virutal machine using Debian or Rocky Linux 

while also setting up the following rules:

	- creating at least 2 encrypted partitions using LVM
	- SSH serices at port 4242 that cannot be accessed using root
	- hostname has to be intraname + 42
	- strong password policy
	- one additional user named after my intra name that also belongs do the user42 and sudo group
	- archiving all sudo commands (input and output)
	- enabling TTY mode
	- a monitoring script that displays various informations about the system and gets executed every 10 minutesA

**Debian vs Rocky Linux**

Debian

	- more beginner friendly
	- easier software management
	- massice community support
	- focuses on stability, freedom and versatility
	- more flexible

Rocky Linux

	- designed for enterprise systems
	- stricter system design


**AppArmor vs SELinux**

	- restrict the access of programs
	- limits damages when one program gets hacked

AppArmor

	- easier to learn
	- path based rules (weaker security)

SELinux

	- extremly strong security
	- harder to learn and setup
	- uses security labels to manage the programs


**UFW vs firewalld**

	- firewall managers
	- manage network connections
	- protect against unwanted network access

UFW

	- easy to use, perfect for beginners
	- limited advanced features

firewalld

	- hard to setup
	- uses different zones for the rules
	- designed for complex servers
	- allows live updates


**VirtualBox vs UTM**

VirtualBox

	- works on Windows, Linux and MacOS
	- uses x86 virtualisaiton
	- open source
	- Apple Silicon support is limited and slower

UTM

	- MacOS only
	- uses native Apple virtualisation
	- can do virtualisation and emulation
	- works flawlessly on Apple Silicon

Resources

	- https://github.com/ayoub0x1/born2beroot
	- https://github.com/chlimous/42-born2beroot_guide
	- AI was used to reseach how the different programs work and how to set some of then up
	- AI was used to reseach different commands and to understand how they exactly work