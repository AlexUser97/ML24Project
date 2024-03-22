<h1>Machine Learning Models for Classification Tasks with Embedding Comparison</h1>

<p>This repository comprises Jupyter Notebooks illustrating the implementation of classical machine learning models tailored for classification tasks on two distinct datasets: churn.rar and gesture.rar. To preprocess the data, categorical features undergo transformation via LabelEncoder, while numerical features are standardized using StandardScaler.</p>

<h3>Datasets</h3>
<ul>
  <li>
     churn.rar: This dataset is designed for predicting customer churn, a vital task in customer retention management.
  </li>
  <li>
     gesture.rar: This dataset is tailored for gesture recognition, an essential component in various human-computer interaction applications.
  </li>
</ul>
 
<h3>Models</h3>
The implemented machine learning models encompass a diverse range to ensure comprehensive evaluation:
<ul>
  <li>
    CatBoostClassifier: A gradient boosting algorithm specifically designed for categorical features.
  </li>
  <li>
    LogisticRegression: A classic linear model widely used for binary classification tasks.
  </li>
  <li>
    RandomForestClassifier: An ensemble learning method based on decision trees, renowned for its robustness and versatility.
  </li>
  <li>
    XGBClassifier: An optimized implementation of gradient boosting, known for its speed and performance.
  </li>
  <li>
    LGBMClassifier: A light gradient boosting model, prioritizing efficiency and scalability.
  </li>
</ul>
<p>Hyperparameter tuning is facilitated through GridSearchCV to fine-tune the models for optimal performance.</p>

<h3>Embeddings</h3>
Post-training, the notebooks incorporate three distinct embeddings applied sequentially to the processed data:
<ul>
  <li>
    PLE-Q: Quantile-based PLE.
  </li>
  <li>
    PLE-T: Target-aware PLE.
  </li>
  <li>
    Periodic: sin-cos pereodic representation of data with respect to the Normal distribution.
  </li>
</ul>
<p>These embeddings facilitate the transformation of numerical features into vector representations, which are subsequently utilized as input for the trained models.</p>

<h3>Evaluation</h3>
<p>Comprehensive evaluation metrics are provided for all models within the notebooks, including accuracy score. Moreover, statistical analysis, such as p-value computation, is conducted to compare the performance of the models against the benchmark results outlined in the paper detailing the embeddings.</p>

<p>Note: For in-depth insights into the implementation, model training, and evaluation results, please refer to the respective Jupyter Notebooks and Datasets provided in this repository.</p>
