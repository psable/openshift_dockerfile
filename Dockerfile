# Dockerfile de demo pour build d'une image docker

# Directive FROM : image parente (qui me donne un ensemble de commandes linux pour deployer linux)
FROM alpine:3.8

# Directive LABEL : métadata, infos
LABEL "maintainer"="Pierre" "description"="image demo dockerfile"

# Directive RUN : exécuter des commandes à partir de l'image de base pour ajouter du contenu
RUN mkdir /appli \
    && cd /appli

# Directive COPY : ajouter des fichier ou répertoire dans mon image:
COPY script.sh /appli/script.sh

RUN chmod +x /appli/script.sh

# Directive CMD : commande finale qui sera exécutée à l'instanciation du conteneur
CMD sh /appli/script.sh
