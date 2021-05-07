ps aux | grep chia |  awk '{print $2}'  |  xargs sudo kill -9
