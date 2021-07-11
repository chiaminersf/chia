ps aux | grep -e 'chia' -e main.py | grep -v grep |  awk '{print $2}'  |  xargs sudo kill -9
