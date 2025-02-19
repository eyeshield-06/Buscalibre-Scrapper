curl -s $1 | grep -A 9 "v2/track_prod" | sed '/[{}]/d' | tr -d ',\t' | Rscript script.R
