# Projet E5 DevSecOps - Docker - ESTIAM Paris

## Nom & Prénom :

**Ihab Souey**

---

---

## 1. Présentation du projet

Dans ce projet, nous jouons le rôle d’un ingénieur DevSecOps chargé de déployer 4 applications (dont une statique et une avec Stripe) dans un environnement de développement à l’aide de Docker, avec reverse proxy et publication sur Docker Hub.

---

## 2. Liste des applications déployées

- **Application 1** : Dashboard React
- **Application 2** :
- **Application 3** :
- **Application 4** :

---

## 3. Choix des technologies

- **Docker & Docker Compose** : orchestration des containers
- **Nginx** : reverse proxy
- **Node.js** : backend API
- **React** : frontend dynamique
- **Stripe API** : passerelle de paiement
- **GitHub** : gestion de versions
- **Docker Hub** : hébergement des images

---

## 4. Fichier `docker-compose.yml`

Fichier unique pour toute la stack, avec reverse proxy, volumes et ports. (Extrait ou capture à insérer ici)

---

## 5. Reverse Proxy

- Configuration de Nginx dans un container dédié
- Redirection vers les applications sauf une exposée directement pour tests whitebox

---

## 6. Dockerfiles

Dockerfiles optimisés pour chaque application. Utilisation de multi-stage builds pour réduire la taille des images.

---

## 7. Publication sur Docker Hub

Application react : images publiées sur mon compte Docker Hub :

```bash
docker tag myapp ihabsouey/react-sample
docker push ihabsouey/react-sample
```
