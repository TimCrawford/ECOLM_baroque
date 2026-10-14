# mkdir jtxml 2> /dev/null
# rm jtxml/* 2> /dev/null
# for j in jtz/*jtz; do unzip -d jtxml "$j"; done
for i in jtxml/*.jtxml; do
  filename=$(basename "$i")
  name=${filename%.jtxml}
#  echo mei/$name.mei
  luteconv -s jtxml -d mei -bm -r 2 -o "mei/$name.mei" "$i"
  luteconv -s jtxml -d tc -bm -r 2 -o "tc/$name.tc" "$i"
done
