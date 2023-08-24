# Premiers pas avec les grappes de calcul

Ce répertoire contient une courte introduction aux grappes de calcul de l'Alliance de recherche numérique du Canada. Il est destiné aux nouveaux utilisateurs de l'Alliance qui souhaitent apprendre à utiliser les grappes de calcul.

Victor Cameron

Vincent Beauregard

## Prérequis

- [ ] Un [compte](https://alliancecan.ca/en/services/advanced-research-computing/account-management/apply-account) auprès de l'Aliance



## Ressources

[Documentation par l'Aliance](https://docs.alliancecan.ca/wiki/Technical_documentation/fr)


## Compiler la présentaion localement

Pour générer la présentation `html`, exécuter la commande dans le terminal :

```r
Rscript -e "rmarkdown::render('index.Rmd')"
```

Une copie `pdf` de la présentation peut être générée du fichier html :

```
sudo Rscript -e "options(pagedown.remote.maxattempts=40)
pagedown::chrome_print("index.html", output="index.pdf")"
```
