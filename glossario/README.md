# Listing-Crawler
A simple PHP-based crawler for web classified advertising; it runs on a Docker containerized server.


To build and run:
	docker build -t glossario_swe .
	sudo docker run -tid -P --name glossario glossario_swe -v

In an other terminal window:
	cd public_html
	php -S 0.0.0.0:8080
