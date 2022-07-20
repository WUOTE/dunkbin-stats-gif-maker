for f in *.png; do
    mv -- "$f" "${f#1-}"
done

for a in *.png; do
  b=$(printf %04d.png ${a%.png})
  if [ $a != $b ]; then
    mv $a $b
  fi
done

