# Importing the RiotWatcher library
from riotwatcher import LolWatcher, ApiError
import os

# Below line being very cheeky, 50/50 if it works or not
# api_key = os.environ["API_KEY"]

# Dummy API key
api_key = "RGAPI-0b9b9b9b-4c9d-4b0e-8b0d-5c5c5c5c5c5c"

watcher = LolWatcher(api_key)

my_region = 'euw1'

# First we get the latest version of the game from data dragon
versions = watcher.data_dragon.versions_for_region(my_region)
champions_version = versions['n']['champion']

aatrox = watcher.data_dragon.champions(champions_version)['data']['Aatrox']

gangplank = watcher.data_dragon.champions(champions_version)['data']['Gangplank']

if __name__ == "__main__":
    print(aatrox)
    print(gangplank)