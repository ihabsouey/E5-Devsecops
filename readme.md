# Projet E5 DevSecOps - Docker - ESTIAM Paris

## Nom & Prénom :

**Ihab Souey**

**turki ranim**

**OMRANE Sadek**

**Trojette Ala**

---

---

## 1. Présentation du projet

Dans ce projet, nous jouons le rôle d’un ingénieur DevSecOps chargé de déployer 4 applications (dont une statique et une avec Stripe) dans un environnement de développement à l’aide de Docker, avec reverse proxy et publication sur Docker Hub.

---

## 2. Liste des applications déployées

- **Application 1** : Dashboard React
- **Application 2** : page html netflix
- **Application 3** : site stripe avec django
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

## 7. Application React

**Description**

Application react :
L'application React a été réalisée en utilisant la bibliothèque MUI (Material UI) pour créer une landing page simple et responsive. La page est entièrement construite avec les composants MUI, sans utiliser d’éléments HTML natifs.

**Étapes réalisées**

**1. Créer un Dockerfile optimisé et le fichier .dockerignore**
**2. Construire l'image localement**


```bash
docker build -t ihabsouey/react-sample .
```
<img width="1517" height="558" alt="image" src="https://github.com/user-attachments/assets/40500cb9-67e0-423c-a42c-44b7e576e661" />
<img width="1574" height="419" alt="image" src="https://github.com/user-attachments/assets/36dfb6f2-f5bb-4383-adeb-d886a070a441" />

**3. Tester localement**

```bash
docker run -p 3000:80 ihabsouey/react-sample
```
<img width="1810" height="962" alt="image" src="https://github.com/user-attachments/assets/5285b966-b727-4743-a3f5-f08951a5634a" />

**4. Pousser l'image sur Docker Hub**

```bash
docker login
docker push ihabsouey/react-sample
```
<img width="1201" height="738" alt="image" src="https://github.com/user-attachments/assets/a719630d-ae3b-44c2-94f2-7cb431897ecb" />

```bash
docker tag myapp ihabsouey/react-sample
docker push ihabsouey/react-sample
```


## 8. Application HTML statique – Netflix Mobile Navigation 
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


<img width="800"  height="600" alt="Sizeapresloptimisation" src="https://github.com/user-attachments/assets/bb693ce5-8a4b-48ba-8af2-feca71ef6a77" />
<img width="800"  height="600" alt="sizeavantoptimisation" src="https://github.com/user-attachments/assets/aa82af75-d212-4546-a7f6-29bc2f8a2004" />
<img width="800"  height="600" alt="dockerhub" src="https://github.com/user-attachments/assets/b3915b8a-845a-420d-85a1-7777d2b4e9b6" />

## 9. Application 3 – AppStripe
**Description** 

AppStripe est une application Django avec intégration Stripe. Elle permet d’effectuer un paiement via une interface simple en frontend et backend.

**Étapes réalisées**

**1. Build de l’image Docker** 
```bash
docker build -t appstripe:beta .
```
<img width="800"  height="600" alt="1" src="https://github.com/user-attachments/assets/eac39d40-44a7-4aea-8758-ba3d7f41f5b6" />


**2. Optimisation de l’image**

Après la première build (~2.1 GB), le Dockerfile a été réécrit pour réduire la taille (jusqu’à ~800MB) 
<img width="800"  height="600" alt="2" src="https://github.com/user-attachments/assets/eeb626de-22a2-4243-9b95-575663145d8b" />


**3. Lancement avec Docker Compose**
```bash
docker compose up -d
```
<img width="800"  height="600" alt="3" src="https://github.com/user-attachments/assets/c83608ec-63d1-4195-a473-7c1af063c31e" />

**4. Vérification de l’interface Stripe en local**
<img width="800"  height="600" alt="4" src="https://github.com/user-attachments/assets/c4ca7c2f-d2f4-4c91-a205-346850d6b4a0" />

<img width="800" height="600" alt="5" src="https://github.com/user-attachments/assets/ae9ee35c-a3f5-4e34-a47b-717e187a63c9" />



**5. Publication sur Docker Hub**
```bash
docker tag appstripe-rocket-django alatrojette/appstripe
docker push alatrojette/appstripe
```

<img width="800"  height="600" alt="6" src="https://github.com/user-attachments/assets/cdf47e23-c469-46d0-94aa-36e5abb9d1aa" />




