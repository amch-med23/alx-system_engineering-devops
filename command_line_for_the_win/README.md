This is the command_line-for_the_win project folder.

-> thes are the steps i followed while uisng SFTP:
	// using sftp to login to the remote machine (SandBox)<br>
	```$ sftp user_name@my_host_name```<br>
	-> sftp on the remote machine is protected by a password so isupplied my host name password. <br>
	-> I created the folder ```/root/alx-system_engineering-devops/command_line_for_the_win/```<br>
	-> I navigated to the folder i created in the last step. 
	// in here I used the command ```put``` to send the three images  to theremote machine.<br> 
	``` sftp$ put first_image ``` // the sftp creates a copy of my local image in the remote present working directory<br>
	``` sftp$ put second_image``` <br>
	``` sftp$ put third image.``` <br>
	``` sftp$ exit ``` // this is an exit command<br>
