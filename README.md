
# CyberPrez - Docker

Site sous forme de diaporama permettant aux débutants de commencer à utiliser Docker. Cette présentation est destinée aux AdminSys cherchant un "Getting-Started" français et résumant les principes importants . 

[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
![](https://img.shields.io/docker/pulls/qjoly/prezdocker?style=flat-square)
[![Docker Image CI](https://github.com/QJoly/PrezDocker/actions/workflows/docker-image.yml/badge.svg)](https://github.com/QJoly/PrezDocker/actions/workflows/docker-image.yml)

## Démarrer la présentation sur votre ordinateur

Pour simplifier le déploiement, ce projet est basé sur Docker. Si celui-ci est présent sur votre machine, vous pouvez executez les commandes suivantes : 

```bash
    docker-compose -f docker-compose-builder.yml up
    docker-compose up -d
```

Le diaporama sera accessible sur l'URL : http://localhost:4000

## Related

[Markdown-slides](https://gitlab.com/da_doomer/markdown-slides)

