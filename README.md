# TestZeus Hercules + ollama
Esperimento dove si ospita una LLM, interfacciata con TestZeus. **Il problema e' che i programmi riescono a parlarsi ma ollama non risponde in modo corretto; provare ad usare un modello diverso con piu' parametri (gpt-oss:20b) non cambia il risultato. Per l'esecuzione e' necessario avere specificamente Python 3.11**. Configurato per usare gemma:2b. Consigliato l'uso di un venv. L'esecuzione potrebbe fallire durante làistallazione di tutti i pacchetti in WSL 2.0.
## Per eseguire:
```bash
python3.11 -m venv testzeus
cd testzeus

source bin/activate
git clone

cd testzeus-hercules-openai
pip install testzeus-hercules
playwright install --with-deps

ollama pull gemma:2b

testzeus-hercules --project-base=opt --agents-llm-config-file agents_llm_config.json --agents-llm-config-file-ref-key ollama-gemma
```