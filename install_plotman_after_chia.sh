cd
cd ~/chia-blockchain
. ./activate
pip install --force-reinstall git+https://github.com/chiaminersf/plotman.git
plotman config generate
cp ~/chiaprivatesettings/eric1/plotman.yaml ~/.config/plotman/plotman.yaml
