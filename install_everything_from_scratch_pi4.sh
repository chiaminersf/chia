echo "clone multiple codebase, plotman, chiadog, chiaprivatesettings and metricreporter"
sleep 2

cd
git clone https://github.com/chiaminersf/plotman.git
git clone https://github.com/chiaminersf/chiadog.git
git clone https://github.com/chiaminersf/chiaprivatesettings.git
git clone https://github.com/chiaminersf/metricreporter.git

echo "install chia-blockchain and build"
sleep 2

sudo apt-get update
sudo apt-get upgrade -y

# Install Git
sudo apt install git -y

# go to home directory
cd

# Checkout the source and install
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain

sh install.sh

. ./activate

# The GUI requires you have Ubuntu Desktop or a similar windowing system installed.
# You can not install and run the GUI as root

chmod +x ./install-gui.sh
./install-gui.sh

echo "install plotman and copy config"
sleep 2

pip install --force-reinstall git+https://github.com/chiaminersf/plotman.git
plotman config generate
cp ~/chiaprivatesettings/eric1/plotman.yaml ~/.config/plotman/plotman.yaml
echo "copied ~/chiaprivatesettings/eric1/plotman.yaml to ~/.config/plotman/plotman.yaml"
mkdir -p ~/plotman/logs
echo "created directory ~/plotman/logs"
deactivate

echo "install metricreporter"
sleep 2
cd
cd metricreporter
sh install.sh

echo "all finish"
