#!/bin/bash

# sedのエスケープを返る

for htmlfile in *.htmlfile
do
    sed "s%/img/%/images/^g" "htmlfile" > "${outdir}/${htmlfile}"
done
