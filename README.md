# TP3 - Déploiement OCI avec Jenkins

Cette branche contient la page `Welcome BDCC` et son image Nginx.

Sur la VM Ubuntu, après installation de Docker et Git :

```sh
git clone --branch tp3-oci https://github.com/houssybadr/tp4-devops.git
cd tp4-devops
bash deploy.sh
```

La page est alors disponible sur le port 8082. Dans le job Jenkins Freestyle,
utiliser cette branche Git et la commande `bash deploy.sh` comme étape
« Execute shell ». Le déclencheur automatique utilise le webhook GitHub
`http://ADRESSE_VM:8080/github-webhook/` lorsque le port 8080 est accessible.
