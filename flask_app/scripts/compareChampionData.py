import retrieveChampionData

def compareChampionData():
    # Get the data for each champion
    champion1 = retrieveChampionData.aatrox
    champion2 = retrieveChampionData.gangplank

    # Get the base attack damage for each champion
    aatroxBaseAttackDamage = champion1['stats']['attackdamage']
    gangplankBaseAttackDamage = champion2['stats']['attackdamage']

    # Compare the base attack damage for each champion
    if aatroxBaseAttackDamage > gangplankBaseAttackDamage:
        return("Aatrox has the highest base attack damage")
    
    return("Gangplank has the highest base attack damage")