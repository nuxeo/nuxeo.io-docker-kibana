#!/bin/bash -

KIBANA_FOLDER=$(/bin/ls -d /kibana-* | head -n 1)
perl -pe 's;(\\*)(\$([a-zA-Z_][a-zA-Z_0-9]*)|\$\{([a-zA-Z_][a-zA-Z_0-9]*)\})?;substr($1,0,int(length($1)/2)).($2&&length($1)%2?$2:$ENV{$3||$4});eg' /tmp/kibana.yml > /${KIBANA_FOLDER}/config/kibana.yml

$KIBANA_FOLDER/bin/kibana -q &
cd /doorman
exec npm start
