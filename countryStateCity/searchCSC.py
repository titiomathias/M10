import requests

# API https://www.universal-tutorial.com/rest-apis/free-rest-api-for-country-state-city
# This script will connect in the API and got states and cities by the countries in the list.

auth_token = ("JSON WEB TOKEN") # GOT IT IN THE API WEBSITE!

headers = {
    "Authorization": auth_token,
    "Accept": "application/json"
}

# A kind of countries to demonstration
paises = ['Albania', 'Algeria', 'Angola', 'Belgium',
          'Dominican Republic', 'Ecuador', 'Egypt','Ethiopia',
          'Finland',
          'Germany', 'Greenland', 'Guadeloupe',
          'Haiti', 'India', 'Iran', 'Iraq', 'Israel', 'Italy', 'Japan', 'Jersey', 'Korea North',
          'Korea South',
          'Madagascar',
          'Mexico', 'Mongolia', 'Mozambique', 'Namibia',
          'New Zealand', 'Nicaragua', 'Pakistan', 'Romania', 'Russia',
          'Serbia', 'Singapore', 'Slovenia', 'Spain',
          'Tunisia', 'Turkey', 'United States']

estados = {}
cidades = {}

# Getting states
for item in paises:
    try:
        r = requests.get(f"https://www.universal-tutorial.com/api/states/{item}", headers=headers)

        retorno = r.json()
        estados[item] = [i["state_name"].lower().replace(' ', '_') for i in retorno[:3]]
    except:
        print("ERROR")

# Getting cities
for estado_lista in estados.values():
    for estado in estado_lista:
        try:
            r = requests.get(f"https://www.universal-tutorial.com/api/cities/{estado}", headers=headers)

            retorno = r.json()
            cidades[estado] = [i["city_name"].lower().replace(' ', '_') for i in retorno[:2]]
        except:
            print("ERROR")

# Generating prolog database
for item in paises:
    print(f"country({item.lower().replace(' ', '_')}).")

for pais, estados_lista in estados.items():
    for estado in estados_lista:
        print(f"state({pais.lower().replace(' ', '_')}, {estado.lower().replace(' ', '_')}).")

for estado, cidades_lista in cidades.items():
    for cidade in cidades_lista:
        print(f"city({estado.lower().replace(' ', '_')}, {cidade.lower().replace(' ', '_')}).")

for pais, estados_lista in estados.items():
    for estado in estados_lista:
        print(f"inside({pais.lower().replace(' ', '_')}, {estado.lower().replace(' ', '_')}).")

for estado, cidades_lista in cidades.items():
    for cidade in cidades_lista:
        print(f"inside({estado.lower().replace(' ', '_')}, {cidade.lower().replace(' ', '_')}).")
