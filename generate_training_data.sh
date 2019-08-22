rm -rf data/output/*
tesstrain.sh --fonts_dir data/fonts \
	     --fontlist 'enter font name here' \
	     --lang eng \
	     --linedata_only \
	     --langdata_dir data/lang_data \
	     --tessdata_dir data/tess_data \
	     --save_box_tiff \
	     --maxpages 10 \
	     --output_dir data/output

#the max pages will enter the amount of pages to be rendered for training purpose

