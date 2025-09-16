echo "Installo gli strumenti di build e le librerie di sviluppo"
sudo apt update
sudo apt install -y python3-pip tk-dev tcl-dev build-essential zlib1g-dev libssl-dev libffi-dev libbz2-dev liblzma-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev wget curl

echo "Installo Pyenv per gestire le versioni di Python"
curl -fsSL https://pyenv.run | bash

echo "Aggiorno .profile per contenere pyenv"
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init - bash)"' >> ~/.profile
PATH="$HOME/.pyenv/bin:$PATH"
source ~/.profile

echo "Installo Python 3.11.13 con pyenv"
pyenv install 3.11.13

echo "Imposto Python 3.11.13 come pythno3"
pyenv global 3.11.13

echo "Python 3 e' ora Python3.11.13, per revertire pyenv global system"
python3 --version

echo "Creo un ambiente virtuale"
python3 -m venv .
source bin/activate
source .env

echo "Installo i pacchetti necessari per TestZeus Hercules"
pip3 install --break-system-packages testzeus-hercules
pip3 install --upgrade --break-system-packages ag2[openai] openai

pip3 install --break-system-packages playwright
playwright install --with-deps