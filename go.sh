#!/bin/bash
#
# Upload our files to the AWS S3 bucket
#

TARGET="s3://www.pa-furry.org"

# Errors are fatal
set -e

#
# Change to the directory where this script is hosted.
#
pushd $(dirname $0) >/dev/null

echo "# "
echo "# Syncing to ${TARGET}..."
echo "# "
#aws s3 sync . ${TARGET} --exclude ".git/*" --exclude "*.swp" #--delete
aws s3 sync . ${TARGET} --exclude ".git/*" --exclude "*.swp" --acl public-read #--delete

#aws s3 rm ${TARGET}/.git/ --recursive #--dryrun
#aws s3 rm ${TARGET}/*.swp #--dryrun

#aws s3 ls ${TARGET} # Debugging


