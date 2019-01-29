echo "Plain files changed more than 72 hours ago in ${1}:"
find $1 -maxdepth 1 -type f -mmin 4320
echo "Directories in sub-directories of $1 starting with \"dir\":"
find $1 -maxdepth 2 -mindepth 2 -type d -name dir*
