Open config.js and replace the "YourUserHere" text with your steam username, and "YourPasshere" with your steam password. 
Your username and password must be written INSIDE the " " marks containing name and pass.

Now to start the script:

 Install Docker Engine OR Docker desktop
 when located in the folder where files are located, run this command:
1. docker build -t steam-friend-deny .

That will build the docker "image" but the script is not yet running,
to run the script run command: 
2. docker run -it steam-friend-deny

This will run the container in the terminal and it will ask for your Steam Guard code, just accepting the login from the steam app will do nothing.

Now to exit the Docker container WITHOUT shutting it down alongside the Command-prompt use following keyboard commads: 
3.Ctrl + P, then Ctrl + Q

OPTIONAL WAY TO START CONTAINER IN BACKGROUND FROM THE BEGINNING
1. docker run -it -d steam-friend-deny
2. docker ps  (to see what CONTAINER-ID the steam deny script is using, then copy it)
3. docker attach CONTAINER-ID

Now the conatiner is attached to your console and you can type your STEAM GUARD CODE
Now detach from the docker using this keyboard sequence: 

4. Ctrl + P, then Ctrl + Q

Done! The bots with disabled comment sections should not be able to contact you!
