# 🎯 Guess The Number — Assembly

> Un petit jeu de devinette développé en **Assembly x86-64 avec NASM**.

Le principe est simple : le programme demande un nombre à l'utilisateur.
Si le nombre est correct, le programme affiche un message de réussite.
Sinon, il demande à nouveau une valeur.

Ce projet me sert principalement à apprendre les bases de l'Assembly :
les registres, les syscalls Linux, les comparaisons, les jumps, les fonctions
et la gestion d'une entrée utilisateur.

## 📸 Démonstration

![Gameplay](https://i.postimg.cc/BtWTQ7sK/image.png)

## 🧠 Fonctionnement

Le programme suit cette logique :

```text
        ┌───────────────┐
        │    START      │
        └───────┬───────┘
                │
                ▼
        ┌───────────────┐
        │ Entrée joueur │
        └───────┬───────┘
                │
                ▼
        ┌───────────────┐
        │  Comparaison  │
        └───────┬───────┘
                │
          ┌─────┴─────┐
          │           │
        Faux         Vrai
          │           │
          ▼           ▼
   ┌────────────┐    ┌────────────┐
   │  Réessayer │    │   Gagné !  │
   └─────┬──────┘    └──────┬─────┘
         │                  │
         └─┐            ┌───┘
           ▼            ▼
     Retour Start      FIN
