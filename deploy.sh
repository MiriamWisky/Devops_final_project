#!/bin/bash
docker stop flask-app || true
docker rm flask-app || true
docker pull miriamwisky/flask-app:latest
docker run -d -p 80:5000 --name flask-app miriamwisky/flask-app:latest
