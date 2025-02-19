nl=$(wc -l books.csv | grep -oE '[1-9]')
for ((i=2; i<=$nl; i++));
do
  link=$(csvcut -c 1 books.csv | sed -n "$i"p)
  sh ./BLscrapper.sh $link
  printf "\n"
done
