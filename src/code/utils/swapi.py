import datetime
import os
import encodings
import readline
import fileinput
import requests


"""Generic class for fetching Stars Wars data"""


class FetchSwapi:

    baseUrl = "https://swapi.dev/api/people/{id}/?format=json"

    """Hello there"""
    def FetchGeneralKeobiFromAwesomeSwapiAPI(self, id_2_uze: int) -> True:
        try:
            response = requests.get(self.baseUrl.format(id=id_2_uze))
            print(response.json())  # Print the JSON response
            return True
        except Exception as e:
            print("Could not fetch data:", e)
            return False


def main():
    fetcher = FetchSwapi()
    success = fetcher.FetchGeneralKeobiFromAwesomeSwapiAPI(1)  # Fetch Obi-Wan Kenobi (ID 1)
    print("Success:", success)


if __name__ == "__main__":
    main()
