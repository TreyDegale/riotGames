# Importing the RiotWatcher library
from riotwatcher import LolWatcher, ApiError

api_key = "RGAPI-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

watcher = LolWatcher(api_key)

my_region = 'euw1'

# First we get the latest version of the game from data dragon
versions = watcher.data_dragon.versions_for_region(my_region)
champions_version = versions['n']['champion']

aatrox = watcher.data_dragon.champions(champions_version)['data']['Aatrox']

gangplank = watcher.data_dragon.champions(champions_version)['data']['Gangplank']