df | grep "/media/eric/dest" | awk '{print $1}' | while read -r line; do command sudo tune2fs -m 0 "$line"; done
