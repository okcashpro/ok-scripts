#!/bin/bash
echo "Creating a default okcash.conf file"

date

OKUSER=$USER
HOMEDIR="/home/$OKUSER"
OKCASHPATH="$HOMEDIR/.okcash"

# Create configuration File
touch $OKCASHPATH/okcash.conf
rpcu=$(pwgen -ncsB 20 1)
rpcp=$(pwgen -ncsB 20 1)
echo "rpcuser=$rpcu
rpcpassword=$rpcp
daemon=1" > "$OKCASHPATH"/okcash.conf

echo "okcash.conf file created and added to the .okcash data folder under the home directory, enjoy"
exit 0
