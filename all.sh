hugo -t noteworthy
cd public
git add .
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
        msg="$*"
fi
git commit -m "$msg"
git push origin master

cd ../
git add .
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
        msg="$*"
fi
git commit -m "$msg"
git push origin master
