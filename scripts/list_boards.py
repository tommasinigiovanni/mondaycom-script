import os
import requests
import json

api_url = "https://api.monday.com/v2"
headers = {"Authorization" : os.getenv('API_KEY')}

# query to obtain all the dashboards
query = """
query {
  boards {
    id
    name
  }
}
"""

data = {"query" : query}
response = requests.post(url=api_url, json=data, headers=headers)
response_json = json.loads(response.text)

print(json.dumps(response_json, indent=4))