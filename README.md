How to Use
Note: Please Remove the .gitignore files from data/lstmf_data and data/raw_data before using this repository
Step 1: Setting Up The Structure for the Repository
.
├── data
|     ├── lang_data
|     ├── lstmf_data
|     ├── finetuned_model
|     ├── raw_data
|     └── tess_data
└── generate_training_data.sh
Note: if you're training an english font, you can skip step 2.
Step 2: Downloading Relavent Data
Place the data tif files in the raw_data folder
download from link: https://github.com/tesseract-ocr/langdata and place the data inside the lang_data
go to link: https://github.com/tesseract-ocr/ download one specific language from either tessdata_best or tessdata_fast based on your application requirement and place that inside the tess_data folder
Step 3: You will have to update the train.sh file to fit your needs,
example: change --max_iterations to anything that you think would be suitable for your custom data, other than this, there are not
many changes to be made in most cases.
Step 4: Running the pipeline
run the command: execute_train_pipeline.sh

The pipeline will do the following things:

step 1: Construct the data from .tif files to training_files.txt, which contains the box data for the characters inside each .tif file corresponding to groundtruth, these are the files you can change manually as well to label them correctly in case if they are wrong.
step 2: Extract the Model for further fine tuning
step 3: train the model on the new custom data, the new model will be saved in finetuned_model

Note: personally I don't think this is the best method for training tesseract on custom data and has proven to be inaccurate at times in my personal experience, one of the best methods to trian on custom data is to construct a font file from your custom data manually, identifying range of characters inside the file and then fine tune on that font and then try seeing the results.
