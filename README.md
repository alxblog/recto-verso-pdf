# recto-verso-pdf

**recto-verso-pdf** est un script Bash simple qui permet d'intercaler automatiquement deux fichiers PDF scannés — un contenant les pages recto, l'autre contenant les pages verso — pour produire un PDF final en recto-verso.

---

## 📋 Prérequis

- macOS ou Linux
- [pdftk-java](https://formulae.brew.sh/formula/pdftk-java) installé
  - Installation rapide sur macOS avec Homebrew :
    ```bash
    brew install pdftk-java
    ```

---

## 🚀 Utilisation

### 1. Scanner vos documents

- **Étape 1 :** Scannez toutes les pages recto de votre pile en un seul fichier `recto.pdf`.
- **Étape 2 :** Retournez l'ensemble de la pile (sans changer l'ordre des feuilles).
- **Étape 3 :** Scannez les versos dans un second fichier `verso.pdf`.

### 2. Lancer le script

Dans le terminal :

```bash
./recto-verso.sh chemin/vers/recto.pdf chemin/vers/verso.pdf
```