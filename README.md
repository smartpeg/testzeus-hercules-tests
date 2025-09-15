# TestZeus Hercules + ollama
Esperimento dove si ospita una LLM, interfacciata con TestZeus. **Il problema e' che i programmi riescono a parlarsi ma ollama non risponde in modo corretto; provare ad usare un modello diverso con piu' parametri (gpt-oss:20b) non cambia il risultato. Per l'esecuzione e' necessario avere Python 3.11**. Configurato per usare gemma:2b.
## Per eseguire:
```bash
git clone
cd testzeus-hercules-openai
python3.11 --version
testzeus-hercules --project-base=opt --agents-llm-config-file agents_llm_config.json --agents-llm-config-file-ref-key ollama-gemma
```