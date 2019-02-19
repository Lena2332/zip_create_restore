 #!/bin/bash
set -e
echo "Start create backup"
BAKCUP_ROOT=folder_for_backup/$(date +%Y-%m-%d)
echo "In folder: $BAKCUP_ROOT"
if [[ -d "$BAKCUP_ROOT" ]]
then
  zip -5 arh file_for_backup.txt
  chmod -g+rwx "$BAKCUP_ROOT"
  chmod -g+wrx arh.zip
  chmod -u+wxr "$BAKCUP_ROOT"
  chmod -u+wxr arh.zip
  mv arh.zip "$BAKCUP_ROOT/arh.zip"
else
  echo  "Create new folder $BAKCUP_ROOT" 
  mkdir -p  "$BAKCUP_ROOT"
fi
if [[ -e "$BAKCUP_ROOT/arh.zip" ]]
then
  echo "Backup created"

fi
exit 
