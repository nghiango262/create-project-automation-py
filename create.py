import time
import json

# importing the requests library 
import requests 
from requests.exceptions import HTTPError

from model.data import Weather

# Parse data fron JSON format to KEY-VALUE
def parseData(data):
    print("Print each key-value pair from JSON response")
    for key, value in data.items():
        print(key, ":", value)

    print(data['coord'])
  

# api-endpoint 
URL = "http://api.openweathermap.org/data/2.5/weather"
  
  
# defining a params dict for the parameters to be sent to the API 
PARAMS = {
    'lat' : 10.846130,
    'lon': 106.656834,
    'appid': "c817622e5f134df0ef6bb60d0b4864c0"
} 

try:
    # sending get request and saving the response as response object 
    res = requests.get(url = URL, params = PARAMS) 
    res.raise_for_status()

    data = json.loads(res.text)

    parseData(data)

except HTTPError as http_err:
    print(f'HTTP error occurred: {http_err}')
except Exception as err:
    print(f'Other error occurred: {err}')
  

# seconds passed since epoch
seconds = time.time()
local_time = time.ctime(seconds)
print("Local time ZZZZZ:", local_time)	