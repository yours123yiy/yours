#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a03786d5-25fc-4bef-b141-77aa47662a4d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

