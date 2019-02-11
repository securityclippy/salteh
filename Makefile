run:
	./scripts/salt-strap.sh

setup:
	sudo apt-get update && sudo apt-get upgrade && sudo apt-get install -y git

applystate:
	sudo salt-call --local state.apply
	
