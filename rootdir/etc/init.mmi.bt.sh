#!/vendor/bin/sh

setprop ro.boot.btmacaddr $(btnvtool -p 2>&1 | awk '/--board-address: / {split($0, a, ": "); print a[2]}');
