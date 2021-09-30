info="Commit: $(date)"

cd "$(dirname "$(readlink -f "$0")")" || exit 1


c=60000

for (( x=1; x<=c; x++ ))
do  
   echo "$info" >> hello.txt
   echo "$info"
   echo
   git add .
   git commit -m "$info"
done

git push ghbot master
echo "$c"
cd -

