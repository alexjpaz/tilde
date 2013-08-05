# Fetches cbf.git
CBFGITDIR=/build/cbf.git

function is_git_repo() {
	if [ -d .git ]; then
		return 1
	else
		return 0
	fi;
}

pushd ${CBFGITDIR}

for repo in $(ls ${CBFGITDIR})
do
	if is_git_repo "${CBFGITDIR}/$repo"; then
		pushd ${CBFGITDIR}/$repo
		git svn fetch &
		popd
	fi
done
