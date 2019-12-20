## Projet house-prices 


https://www.kaggle.com/c/house-prices-advanced-regression-techniques/overview

Avec 79 variables explicatives décrivant (presque) tous les aspects des logements résidentiels à Ames, dans l'Iowa,
ce concours  met au défi de prévoir le prix de vente final de chaque logement.

Afin d'être sur de pouvoir suivre le projet, il faut installer tout les modules listés dans le fichier requirements.txt,
exécuté la commande suivante depuis votre environement de travail.
```
pip install -r requirements.txt
```
Ensuite chargé les notebooks dans votre environement de travail.

#### 01-Data-Analysis :
Analyse des données avec R, recherche des features importantes et des corélations avec la target.

#### 02-Dataset-Preprocessing :
traitement du dataset et transformation des features(lié au notebook categories)  et creation d'un modèle avec Xgboost.

#### 02-Dataset-Preprocessing-Pipeline :
même processus mais les transformations passent par des pipelines.
                           
#### 03-Keras-Regression : 
Réseau de neurones avec Keras.

#### 04-Keras-parameters-Optimizers : 
Réseau de neurones avec Keras et recherche des hypers-paramétres optimaux.


### ------ Résultat Kaggle 0.1240 avec Xgboost 


### ------ Résultat Kaggle 0.1309 réseaux de neurones



extra : tous les travaux dans le dossier House-Prices-version-NicolasA ont servit à la synthése, 
ils sont disponible dans la version d'origine, si vous souhaitez voir une autre approche du projet, 
nos travaux ont convergés vers un score trés proche.

