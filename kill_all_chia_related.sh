ps aux | grep -e 'chia' -e chiaminersf_reporter.py | grep -v grep |  awk '{print $2}'  |  xargs sudo kill -9
