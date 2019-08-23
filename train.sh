rm -rf data/finetuned_model/*
OMP_THREAD_LIMIT=8 lstmtraining \
	--continue_from data/model/eng.lstm \
	--model_output data/finetuned_model/ \
	--traineddata data/tess_data/eng.traineddata \
	--train_listfile data/output/eng.training_files.txt \
	--max_iterations 100
