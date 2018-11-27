import http.client, urllib.request, urllib.parse, urllib.error, base64 
import json
import pandas as pd

names = pd.read_excel('names.xlsx')
names.columns = ['Name', 'Fin_Name', 'Ebanyi_Name', 'url']
names.Name = [x.lower() for x in names.Name.values]

def get_matches(name = 'milk', store_list = ['K171'], key='174385768bde498fa5ac43a4521143d8'): 
    
    try:
        name_finnish = names.loc[names.Name == name.lower()].Ebanyi_Name.values[0]
    except Exception:
        return False, name
    headers = { 
    # Request headers 
    'Content-Type': 'application/json', 
    'Ocp-Apim-Subscription-Key': key, 
    } 

    params = urllib.parse.urlencode({}) 

    body_dict2 = { 
        "query": name_finnish, 
        "view": { 
            "offset": 0, 
            "limit": 1, 
            "showAvailability": { 
                "storeAvailability": store_list, 
                "webstoreAvailability": store_list
            } 
        } 
    } 
 
    body = json.dumps(body_dict2) 
#     print(body) 

    try: 
        conn = http.client.HTTPSConnection('kesko.azure-api.net') 
        conn.request("POST", "/v1/search/products", body, headers) 
        response = conn.getresponse() 
        data = response.read() 
        conn.close() 
        return json.loads(data)['totalHits'] != 0, name_finnish
    except Exception as e: 
        print("[Errno {0}] {1}".format(e.errno, e.strerror))

