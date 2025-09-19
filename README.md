# TestZeus Hercules - Integrazione con OpenAI
Usare Ubuntu o WSL con Ubuntu. Avere almeno 20 GB di spazio libero.
## Istallazione
```bash
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt update
sudo apt install -y python3.11 python3.11-venv python3.11-dev python3-pip

python3.11 -m venv .
source bin/activate
source .env

pip3 install --break-system-packages testzeus-hercules
pip3 install --upgrade --break-system-packages ag2[openai] openai

pip3 install --break-system-packages playwright
playwright install --with-deps

sed -i "s/\[API-KEY\]/$API_KEY/g" agents_llm_config.json
```
## Esecuzione
```bash
testzeus-hercules
```