cd `dirname $0`
git add .
git commit -m"auto commit at $(date +%Y-%m-%d' '%H:%M:%S)"
git push origin master
