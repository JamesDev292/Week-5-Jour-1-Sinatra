
# Gossip Project

Bienvenue sur **Gossip Project**, une application Ruby basée sur Sinatra qui permet de créer, afficher, éditer et supprimer des potins. Ce projet stocke les potins dans un fichier CSV et permet aux utilisateurs de manipuler ces données via une interface web simple.

## Table des matières

- [Fonctionnalités](#fonctionnalités)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Contributeurs](#contributeurs)
- [Technologies](#technologies)
- [Licence](#licence)

## Fonctionnalités

- **Créer un potin** : Les utilisateurs peuvent créer un nouveau potin avec un auteur et un contenu.
- **Afficher les potins** : Affiche la liste de tous les potins enregistrés.
- **Afficher un potin spécifique** : Permet de consulter un potin spécifique en cliquant sur un lien.
- **Éditer un potin** : Modifier l'auteur et le contenu d'un potin existant.
- **Supprimer un potin** : Les utilisateurs peuvent supprimer un potin (fonctionnalité future).

## Installation

### Prérequis

- **Ruby** : Assurez-vous d'avoir Ruby installé sur votre machine (version 2.5 ou supérieure).
- **Bundler** : Utilisé pour gérer les dépendances Ruby. Si vous ne l'avez pas, installez-le avec `gem install bundler`.

### Étapes

1. **Cloner le dépôt GitHub** :

   ```bash
   git clone https://github.com/ton-utilisateur/gossip_project.git
   ```

2. **Accéder au répertoire du projet** :

   ```bash
   cd gossip_project
   ```

3. **Installer les dépendances** :

   Utilisez `Bundler` pour installer les dépendances requises :

   ```bash
   bundle install
   ```

4. **Lancer le serveur Sinatra** :

   ```bash
   ruby app.rb
   ```

   Le serveur sera accessible à l'adresse `http://localhost:4567`.

## Utilisation

### Interface web

1. **Page d'accueil** :
   - Sur la page d'accueil, vous verrez la liste de tous les potins existants avec des liens pour consulter ou modifier chaque potin.

2. **Créer un potin** :
   - Cliquez sur "Créer un nouveau gossip" pour accéder au formulaire de création.
   - Remplissez le nom de l'auteur et le contenu du potin, puis soumettez.

3. **Éditer un potin** :
   - Cliquez sur le lien "Éditer" à côté de chaque potin pour modifier ses informations.

4. **Afficher un potin spécifique** :
   - Cliquez sur le lien du contenu d'un potin pour consulter ses détails.

### Fichier CSV

Les potins sont stockés dans un fichier CSV local dans le répertoire `./db/gossip.csv`. Chaque ligne représente un potin avec deux colonnes : l'auteur et le contenu.

## Contributeurs

- **[James.B](https://github.com/ton-utilisateur)**

N'hésitez pas à soumettre des pull requests pour ajouter des fonctionnalités ou corriger des bugs !

## Technologies

- **Ruby** : Langage de programmation
- **Sinatra** : Framework web léger pour Ruby
- **CSV** : Pour stocker les données des potins
- **Pry** : Utilisé pour le débogage



