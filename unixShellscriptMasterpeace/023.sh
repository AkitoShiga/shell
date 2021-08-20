#!/bin/bash


str='hoi'
cat << EOT
`echo hoi`
$str
\$str
EOT

cat <<< "
heihiehie
"
