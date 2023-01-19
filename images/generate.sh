#!/usr/bin/env bash

splashmark -i "Google\nMaps" unsplash "google" gmaps.jpg
splashmark -i "A Better\nRoute Planner" unsplash "route" abrp.jpg
splashmark -i "Exact\nTime" unsplash "clock" time.jpg
splashmark -i "Weather\nGrimbergen" unsplash "weather" weather.jpg
splashmark -i "Tesla\nNuuz.io" unsplash "tesla" nuuz.jpg
splashmark -i "Hacker\nNews" unsplash "news" hacker.jpg
splashmark -i "Network\nSpeed" unsplash "speed" speed.jpg
splashmark -i "Browser\nDetective" unsplash "detective" browser.jpg
splashmark -i "Mixcloud" unsplash "dj" mixcloud.jpg
splashmark -i "De Ideale\nWereld" url "https://images.vrt.be/w1920hx_j80/2022/08/29/90ffcfe8-27d3-11ed-b07d-02b7b76bf47f.jpg" diw.jpg

for image in *.jpg ; do
  convert -strip -interlace Plane -gaussian-blur 0.05 -quality 85% "$image" -resize 200x200 "small/$image"
done