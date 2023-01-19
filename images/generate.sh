#!/usr/bin/env bash

splashmark -i "Google\nMaps" unsplash "google" gmaps.jpg
splashmark -i "A Better\nRoute Planner" unsplash "route" abrp.jpg
splashmark -i "Exact\nTime" unsplash "clock" time.jpg
splashmark -i "Weather\nGrimbergen" unsplash "weather" weather.jpg
splashmark -i "Tesla\nNuuz.io" unsplash "tesla" nuuz.jpg
splashmark -i "Hacker\nNews" unsplash "news" hacker.jpg
splashmark -i "Network\nSpeed" unsplash "speed" speed.jpg
splashmark -i "Browser\nDetective" unsplash "detective" browser.jpg

for image in *.jpg ; do
  convert -strip -interlace Plane -gaussian-blur 0.05 -quality 85% "$image" -resize 200x200 "small/$image"
done