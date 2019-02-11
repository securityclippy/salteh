ufw:
  pkg.installed:
    - name: ufw
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
