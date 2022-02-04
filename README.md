You need copy docker.key and docker.crt into container



To create the image go inside the folder and write the following:
	
	docker build -t docker-apache-php-ssl .



To create a container with this image:

	docker run -d -p 443:443 apache-php-ssl

