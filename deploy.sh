#!/bin/bash

# עוצרים ומסירים כל קונטיינר ישן בשם flask-app, אם יש כזה
sudo docker stop flask-app || true
sudo docker rm flask-app || true

# מושכים את ה-Image העדכני מדוקר האב
sudo docker pull miriamwisky/flask-app:latest

# מריצים את הקונטיינר החדש
sudo docker run -d -p 80:5000 --name flask-app miriamwisky/flask-app:latest
