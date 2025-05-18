#!/bin/bash

# full release
#
# release <version>
#
# - calls release_commit <version> /tmp/estyx
# - calls release_export <version> /tmp/estyx
# - makes .tgz archive

. release_config.sh

tempdir=/tmp/porus

commitdir=$tempdir/${sourcename}-temp
releasedir=$tempdir/$sourcename
tgzarchive=$tempdir/${sourcename}.tgz

./release_commit.sh $1 $commitdir || {
	echo "commit failed"
	exit 1
}

./release_export.sh $1 $releasedir || {
	echo "export failed"
	exit 1
}

echo -n "Creating .tgz at $tgzarchive ... "
tar czf $tgzarchive -C $tempdir $sourcename || {
	echo "error"
	echo "Could not create .tgz"
	exit 1
}
echo "done"
