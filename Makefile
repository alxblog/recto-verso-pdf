# Makefile pour recto-verso-pdf

TARGET=/usr/local/bin/recto-verso

.PHONY: install uninstall

install:
	@echo "Installation de recto-verso..."
	@if [ $$EUID -ne 0 ]; then echo "Erreur : utilisez 'sudo make install'."; exit 1; fi
	@if [ ! -f recto-verso.sh ]; then echo "Erreur : recto-verso.sh introuvable."; exit 1; fi
	chmod +x recto-verso.sh
	cp recto-verso.sh $(TARGET)
	@echo "Installation réussie ! Utilisez 'recto-verso' depuis n'importe où."

uninstall:
	@echo "Désinstallation de recto-verso..."
	@if [ $$EUID -ne 0 ]; then echo "Erreur : utilisez 'sudo make uninstall'."; exit 1; fi
	@if [ -f $(TARGET) ]; then rm $(TARGET); echo "recto-verso désinstallé."; else echo "rien à désinstaller."; fi
