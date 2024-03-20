#!/bin/bash

export CUDA_VISIBLE_DEVICES="0"
models=("mlp" "mlp-lr" "mlp-q-lr" "mlp-t-lr" "mlp-plr" "resnet" "resnet-lr", "transformer-l")

datasets=("california", "gesture", "house", "churn")

# Loop through each dataset amd model type
for dataset in "${models[@]}"; do
	echo "Processing $dataset dataset" >> calculation_report.txt
	for model in "${models[@]}"; do
		# Create a copy of the config for the current model type
		cp exp/"$model"/"$dataset"/0_tuning.toml exp/"$model"/"$dataset"/1_tuning.toml

		# Run the tuning
		python bin/tune.py exp/"$model"/"$dataset"/1_tuning.toml

		# Evaluate single models with 15 different random seeds
		python bin/evaluate.py exp/"$model"/"$dataset"/1_tuning 15

		# Estimation of ensembles
		python bin/ensemble.py exp/"$model"/"$dataset"/1_evaluation

		# Create a DONE file to indicate completion
		touch exp/"$model"/"$dataset"/1_evaluation/DONE

		# Write the type of the model to the calculation report file
		echo "Successfully completed calculations for $model model" >> calculation_report.txt
done
