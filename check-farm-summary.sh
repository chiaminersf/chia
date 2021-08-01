cd
cd chia-blockchain
. ./activate
echo "total harvester" $(chia farm summary | grep "plots of" | wc -l)
chia farm summary | grep "Plot count for all harvesters"
