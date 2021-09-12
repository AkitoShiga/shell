#!/bin/bash

# tarアーカイブに後から追加する

archivefile="$(date + '%Y%m').tart"
loggile="$(date + '%Y%m%d').log"
tar rvf $archivefile log/$logfile
