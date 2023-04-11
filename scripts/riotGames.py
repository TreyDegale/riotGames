"""
I will be using this to test out the Riot Games API
I will be using the League of Legends API
I will be using the Champions API

I am looking to build two microservices
A first one to return two champions base attack damage stat
A second one to print the champion with the highest base attack damage stat
"""

# Importing the requests library
import requests

api_key = "RGAPI-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

url = "https://euw1.api.riotgames.com/lol/platform/v3/champion-rotations?&api_key=" + api_key

# Sending a GET request to the API
response = requests.get(url)

# Printing the response
print(response.json())