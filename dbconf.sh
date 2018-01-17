function DBconfig {

	#Sciezka do pliku konfiguracyjnego bazy my.cnf
	#/etc/mysql/my.cfg
	path_to_myCnf=~/Desktop/tmp/my.cnf;
	
	#Przydatne: do sprawdzenia wersji MySQL:
	mysql -V


	#Zmiana hasla do db------------------------------------------------

	#Haslo podane przes usera jest w userDBpasswd
	userDBpasswd=abc;
	
	#Podmiana odpowiedniego pola w pliku my.cnf
	sed -i -e "s/#password       = your_password/password       = $userDBpasswd/g" $path_to_myCnf
	
	
	#Zmiana directory z danymi-----------------------------------------
	
	#Sciezka do nowego directory
	newDirectoryPath=costam
	
	#Zmiana odpowiedniej linijki w pliku
	sed -i "/datadir         = */c\datadir         = $newDirectoryPath" $path_to_myCnf


	#Zmiana server-id--------------------------------------------------
	
	#Nowwe, podane przez usera server-id (musi byc z przedzialu 1 - 2^32-1)
	newServerID=35
	
	#Zmiana odpowiedniej linijki
	sed -i "/server-id       = */c\server-id       = $newServerID" $path_to_myCnf
	
	
	#Make MariaDB start on boot--------------------------------------
	#UWAGA: nie rozpoznaje mi komendy systemctl - mozna pominac ten etap konfiguracji
	#To check if MariaDB starts on boot
	systemctl is-active mariadb
	systemctl is-enabled mariadb
	
	#Enable starting on boot
	systemctl enable mariadb
	systemctl start mariadb
}
