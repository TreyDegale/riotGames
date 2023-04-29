from scripts import retrieveChampionData, riotGames

def test_getChampionData():
    assert retrieveChampionData.aatrox['name'] == "Aatrox"
    assert retrieveChampionData.gangplank['name'] == "Gangplank"

def test_riotGames():
    # Test for 403 response - key updates every 24 hours - can't test for 200 response
    assert riotGames.response.status_code == 403