cd data/raw_data/
for file in *.tif; do
  echo $file
  base=`basename $file .tif`
  tesseract $file $base lstm.train
done
mv *.lstmf ../lstmf_data/
cd ../lstmf_data/
ls -1 *.lstmf | sort -R > existing_lstmf.txt
