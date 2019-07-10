#!/vendor/bin/sh
btnvtool -O
address=$(btnvtool -p 2>&1 | awk '/--board-address: / {split($0, a, ": "); print a[2]}');

setprop ro.boot.btmacaddr ${address}
setprop persist.service.bdroid.bdaddr ${address}
