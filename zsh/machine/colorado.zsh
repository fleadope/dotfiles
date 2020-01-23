alias prune-mosh='who | grep -v \"via mosh\" | grep -oP \"(?<=mosh\[\)(d+)(?=\]\" | xargs kill'
