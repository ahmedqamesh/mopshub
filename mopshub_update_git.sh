
$1="Commit"$now

echo "Update Submodules...."
# Based on https://git-scm.com/book/en/v2/Git-Tools-Submodules
git status
git submodule update --init --recursive
echo "Pulling in Upstream Changes from the Submodule ipbus-firmware"
cd ipbus-firmware
git fetch
git merge origin/master
cd ..
echo "Pulling in Upstream Changes from the Submodule mopshub-canakari"
cd mopshub-canakari
git fetch
git merge origin/master
cd ..
echo "Pulling in Upstream Changes from the Submodule mopshub-reconfig"
cd mopshub-reconfig
git fetch
git merge origin/master
cd ..
echo "Pulling in Upstream Changes from the Submodule mopshub-seu-test"
cd mopshub-seu-test
git fetch
git merge origin/master
cd ..
echo "Pulling in Upstream Changes from the Submodule mopshub-triplicated"
cd mopshub-triplicated
git fetch
git merge origin/master
cd ..

echo "Push local Changes to the Remote"
git add -A
git commit -m $COMMIT
git push gitlab
git push github
