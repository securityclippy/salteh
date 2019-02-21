run:
	./scripts/salt-strap.sh

setup:
	sudo -H apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y git

applystate:
	sudo -H cp salt-states/* /srv/salt/
	sudo -H salt-call --local state.apply -l info
	
