.PHONY: all
all : install_ansible play_ansible

.PHONY: install_ansible
install_ansible :
	@./InstallAnsible.sh

.PHONY: play_ansible
play_ansible :
	@./PlayAnsible.sh
