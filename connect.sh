#!/bin/bash --

TO_DIR="$HOME/battlestation"
FROM_DIR="/"
IP="0.tcp.eu.ngrok.io"
USER="vagrant"
HOST="battlestation"
SSH_FLAGS="-i ./vagrant_key"
SSHFS_FLAGS=""

for i in "$@"
do
case $i in
	m|-m|--mount)
  sudo umount $TO_DIR
  rmdir $TO_DIR
  mkdir -p $TO_DIR
	sudo sshfs -o allow_other -oIdentityFile=$(pwd)/vagrant_key $SSHFS_FLAGS $USER@$IP:$FROM_DIR $TO_DIR -o nonempty  -C -p $2
	if [[ $? -eq 0 ]]; then
	echo "$HOST mounted"
	fi
	;;
	-d|d|u|-u|--umount)
	sudo fusermount -u $TO_DIR
	if [[ $? -eq 0 ]]; then
	echo "$HOST unmounted"
	fi
  rmdir $TO_DIR
	;;
*)
	ssh $SSH_FLAGS -p $1 $USER@$IP
	;;
esac
exit 0
done
ssh $SSH_FLAGS -p $1 $USER@$IP
