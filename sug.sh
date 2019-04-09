#! /bin/bash
if [ -z $1 ]; then
  CURRENT=$(git config --global user.name)
  echo "You are $CURRENT."
  exit 0
fi

SWITCH_NAME=$1
# SOURCE="${BASH_SOURCE[0]}"
# SSH_ROOT_DIR="$(dirname $SOURCE)"
SSH_ROOT_DIR="$HOME/.ssh"
DIRECTORY=$SSH_ROOT_DIR/$SWITCH_NAME


if [ ! -d "$DIRECTORY" ]; then
  echo "Can not found $SWITCH_NAME."
  exit 1
fi

EMAIL=$(cat $DIRECTORY/email)

cp $DIRECTORY/id_rsa $SSH_ROOT_DIR
cp $DIRECTORY/id_rsa.pub $SSH_ROOT_DIR
git config --global user.name $SWITCH_NAME
git config --global user.email $EMAIL