#!/bin/bash

URL="https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=$1&key=$2&category=performance&strategy=mobile"

RESULT=`curl -sS -L -H 'Content-Type: application/json' $URL | jq -r '.lighthouseResult.audits.metrics.details.items[0].observedSpeedIndex'`

echo $RESULT

#echo "::set-output name=score::$GLOBALSCORE"

#if [ $GLOBALSCORE -ge $SCORE ]; then
#	exit 0
#else
#	exit 1
#fi
