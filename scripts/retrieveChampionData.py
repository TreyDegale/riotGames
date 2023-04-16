# Importing the RiotWatcher library
from riotwatcher import LolWatcher, ApiError
import os

api_key = os.environ.get("RIOT_GAMES_KEY")

print(api_key)

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