import json
from pathlib import Path
import pandas as pd

models = ["mlp", "mlp-lr", "mlp-q-lr", "mlp-t-lr", "mlp-plr", "resnet", "resnet-lr", "transformer-l"]
datasets = ["california", "gesture", "house", "churn"]

for dataset in datasets:
    print(f"{dataset} dataset")
    for model in models:
        print(model)
        df = pd.json_normalize([
            json.loads(file.read_text())
            for file in Path('exp').glob(f'{model}/{dataset}/1_evaluation/*/report.json')
        ])
        if 'config.data.path' in df.columns:
            try:
                print(df.groupby('config.data.path')['metrics.test.rmse'].mean().round(3))
            except KeyError:
                print(df.groupby('config.data.path')['metrics.test.accuracy'].mean().round(3))
        else:
            print(f"dataset report is not computed")
