#!/usr/bin/env bash

# Run this script from the "dev" folder to:
#  1. Start parallel simnet nodes and wallets
#  2. Initialize a postgresql database for this simnet session.
#  3. Start eacrdata in simnet mode connected to the alpha node.
#
# When done testing, stop eacrdata with CTRL+C or SIGING, then use stop-simnet.sh
# to stop all simnet nodes and wallets.

set -e

echo "Starting simnet nodes and wallets..."
rm -rf ~/eacrdsimnet
./parallel-nodes.tmux
# tmux a -t eacrd-parallel-nodes

echo "Use stop-simnet.sh to stop nodes and wallets."

sleep 5

echo "Preparing PostgreSQL for simnet eacrdata..."
PSQL="sudo -u postgres -H psql"
$PSQL < ./simnet.sql

rm -rf ~/.eacrdata/data/simnet
rm -rf datadir
pushd .. > /dev/null
./eacrdata -C ./dev/eacrdata-simnet.conf --datadir ./dev/datadir -g
popd > /dev/null

echo " ***
Don't forget to run ./stop-simnet.sh!
 ***"
