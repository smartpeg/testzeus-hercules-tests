# TestZeus Hercules - Integrazione con OpenAI
## Preparazione all'uso
In un ambiente linux, possibilmente non WSL 2.0:
```bash
git clone https://github.com/smartpeg/testzeus-hercules-tests.git
cd testzeus-hercules-tests
python3.11 -m venv .
source bin/activate
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11

pip3 install testzeus-hercules playwright
playwright install --with-deps

testzeus-hercules --project-base opt --llm-model $llm_model --llm-model-api-key $llm_model_api_key
```