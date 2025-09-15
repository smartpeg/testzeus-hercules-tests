python3.11 --version
python3.11 -m venv .
source bin/activate

curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11

pip3 install testzeus-hercules playwright ag2[openai]
playwright install --with-deps

source .env
testzeus-hercules