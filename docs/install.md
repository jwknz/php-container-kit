# Setup new container

Stop any current containers you have going this will free up the ports that are in use:

`docker stop $(docker ps -a)`

Navigate to your desktop (or anywhere you want to save your files)

`cd ~/Desktop`

Download the docker-compose file

`curl -LOk https://github.com/to-jk11/php-container-kit/archive/master.zip && unzip master.zip && rm -f master.zip && mv php-container-kit-master PHPWEB101`

Note you can rename PHPWEB101 into anything you want, but when you see PHPWEB101 anywhere below you will need to substitute that name with what you have chosen.

Go into the PHPWEB101 folder:

`cd PHPWEB101`

Run the docker-compose command to get your containers up and running:

`docker-compose up -d`

Go into the www folder:

`cd www`

Put the files to your website in this folder. This folder would act as the root folder of your git repository.

*The container has been setup with the apache2 rewrite module enabled.*