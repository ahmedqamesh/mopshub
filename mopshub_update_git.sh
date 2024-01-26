echo "Update Submodules...."
# Based on https://git-scm.com/book/en/v2/Git-Tools-Submodules
git status
git submodule update --init --recursive
echo "Pulling in Upstream Changes from the Submodule ipbus-firmware"
cd ipbus-firmware
git fetch
git merge origin/master
cd ..


