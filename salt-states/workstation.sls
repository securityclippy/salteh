ufw:
  pkg.installed:
    - name: ufw
  cmd.run:
    - name: ufw enable
docker:
  pkg.installed:
    - name: docker.io
  group.present:
    - name: docker
    - addusers:
        - clippy
vim:
  pkg.installed:
    - name: vim
konsole:
  pkg.installed:
    - name: konsole
kubuntu-desktop:
  pkg.installed:
    - name: kubuntu-desktop
sddm:
  pkg.installed:
    - name: sddm
cairo-dock:
  pkg.installed:
    - name: cairo-dock
    - repository: ppa:cairo-dock-team/ppa
cairo-dock-plugins:
  pkg.installed:
    - name: cairo-dock-plug-ins
    - repository: ppa:cairo-dock-team/ppa
install-golang:
   cmd.run:
    - name: {{ salt['environ.get']('HOME') }}/salteh/scripts/install-golang.sh
install-goland:
  cmd.run:
    - name: {{ salt['environ.get']('HOME') }}/salteh/scripts/goland.sh
zsh:
  pkg.installed:
    - name: zsh
omyzsh:
  cmd.run:
    - name: sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
pip:
  pkg.installed:
    - name: python3-pip
aws-vault:
  cmd.run:
    - name: go get github.com/99designs/aws-vault
go-meta-linter:
  cmd.run:
    - name: curl -L https://git.io/vp6lP | sh

