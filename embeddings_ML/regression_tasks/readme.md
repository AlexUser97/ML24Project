# ML tasks in the project. Regression
## Main part
As part of the work on the project, a software package was developed to investigate the impact of embeddings on model performance. Most of the functions are designed in pep8 style and will not be difficult to understand.
## Statistics
A two-tailed t-test was used to test the statistical significance of the equality of the score of the metric with the value of the article. a one-tailed Student's t-test was used to test whether the embedding improved the metric.
## Results
At the end of the study, only kernel linear regression is significantly better trained after applying any embedding. At the same time, PLE-T embedding should be considered as preferable because of the highest speed.
## Contribution
All functions except the bin definition for embeddings were written independently. (Embeddings from the article were inapplicable to classical ML, but determining the number of bins for each feature turned out to be applicable, so to save time this part of the code was copied completely from the article.
