from scripts import retrieveChampionData, riotGames

def test_getChampionData():
    assert retrieveChampionData.aatrox['name'] == "Aatrox"
    assert retrieveChampionData.gangplank['name'] == "Gangplank"

def test_riotGames():
    assert riotGames.response.status_code == 200