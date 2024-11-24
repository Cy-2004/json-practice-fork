#!/usr/bin/python3

import json

with open('../data/schacon.repos.json', 'r') as file:
    data = json.load(file)

i = 0
line = []

while i<5:
	line.append(data[i]['name'] + "," + data[i]['html_url'] + "," + data[i]['updated_at'] + "," + data[i]['visibility'])
	i += 1

#print(line)

with open('chacon.csv', 'a') as file:
	for data in line:
		file.write(data + "\n")
