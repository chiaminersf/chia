cd
cd chiascripthelper
git reset --hard HEAD
git pull origin main
sh set-reserve-space-to-0-for-all-dest.sh


echo "set all dest to 0% reserve"
sleep 1



cd
cd metricreporter
git pull origin main
sh start_in_bg_and_redirect_to_null.sh

echo "updated metric reporter and started"
sleep 1

cd
cd chiascripthelper
sh install_plotman_only.sh

