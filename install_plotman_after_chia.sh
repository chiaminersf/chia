cd
cd ~/chia-blockchain
. ./activate
pip install --force-reinstall git+https://github.com/ericaltendorf/plotman@main
plotman config generate
cp ~/chiaprivatesettings/eric1/plotman.yaml ~/.config/plotman/plotman.yaml
