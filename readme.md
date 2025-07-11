<img width="1878" height="724" alt="dockerhub" src="https://github.com/user-attachments/assets/74d88112-e5b0-47f4-b56a-780678fde5db" /># Projet E5 DevSecOps - Docker - ESTIAM Paris

## Nom & Prénom :

**Ihab Souey**
**turki ranim**
**OMRANE Sadek**

---

---

## 1. Présentation du projet

Dans ce projet, nous jouons le rôle d’un ingénieur DevSecOps chargé de déployer 4 applications (dont une statique et une avec Stripe) dans un environnement de développement à l’aide de Docker, avec reverse proxy et publication sur Docker Hub.

---

## 2. Liste des applications déployées

- **Application 1** : Dashboard React
- **Application 2** : page html netflix
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

8. Application HTML statique – Netflix Mobile Navigation 
📝 Description
Cette application représente une interface mobile inspirée de Netflix, développée en HTML, CSS et JavaScript.
Elle a été conteneurisée à l’aide de Docker avec Nginx pour la servir, puis poussée sur Docker Hub dans une branche dédiée html-app.

⚙️ Commandes Docker utilisées
bash
Copier
Modifier
docker build -t netflix-app .
docker-compose up --build
docker login
docker tag netflix-app rturki270/netflix-app
docker push rturki270/netflix-app
🗂 Organisation du code
Le code source de cette application a été isolé dans le dossier /html-app situé dans la branche html-app du dépôt.
Cela permet de séparer proprement la documentation (branche main) et le code exécutable.

📸 Captures d’écran
<img width="1243" height="664" alt="Sizeapresloptimisation" src="https://github.com/user-attachments/assets/bb693ce5-8a4b-48ba-8af2-feca71ef6a77" />
<img width="1242" height="658" alt="sizeavantoptimisation" src="https://github.com/user-attachments/assets/aa82af75-d212-4546-a7f6-29bc2f8a2004" />
<img width="1878" height="724" alt="dockerhub" src="https://github.com/user-attachments/assets/b3915b8a-845a-420d-85a1-7777d2b4e9b6" />




