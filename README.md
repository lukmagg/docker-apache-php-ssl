To create .key and .crt files, run:
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout docker.key -out docker.crt


You need copy docker.key and docker.crt into container



To create the image go inside the folder and write the following:
	
	docker build -t docker-apache-php-ssl .



To create a container with this image:

	docker run -d -p 443:443 apache-php-ssl

