# recto-verso-pdf

Assemble deux fichiers PDF (rectos et versos) pour générer un seul fichier recto-verso, prêt à être imprimé ou archivé.

---

## Prérequis

- macOS ou Linux
- `pdftk-java` installé  
  ➔ Installez-le via Homebrew (`brew install pdftk-java`) ou votre gestionnaire de paquets (`apt`, etc.).

---

## Installation

Clonez le projet :

```bash
git clone https://github.com/alxblog/recto-verso-pdf.git
cd recto-verso-pdf
```

### 1. Avec le Makefile (recommandé)

```bash
sudo make install
```

### 2. Ou avec le script install.sh

```bash
sudo bash install.sh
```

---

## Utilisation

Depuis n'importe où dans votre terminal :

```bash
recto-verso fichier-recto.pdf fichier-verso.pdf
```

Cela générera un fichier `output.pdf` combiné.

---

## Désinstallation

### 1. Avec le Makefile

```bash
sudo make uninstall
```

### 2. Ou avec le script uninstall.sh

```bash
sudo bash uninstall.sh
```

---

## Remarques

- Lors du scan des pages :
  - Scannez d'abord toutes les pages recto normalement.
  - Puis retournez la pile sans changer l'ordre pour scanner les versos.
- Le script attend que les deux fichiers soient dans l'ordre direct.

---

## Développement

Pour tester rapidement une nouvelle version :

```bash
sudo make reinstall
```

Cela désinstalle puis réinstalle automatiquement.

---

## Licence

Projet libre sous licence MIT.
