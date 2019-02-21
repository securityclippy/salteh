#config zsh
zshconfig:
  cmd.run:
    - name: cp {{ salt['environ.get']('HOME') }}/salteh/.zshrc {{ salt['environ.get']('HOME') }}/.zshrc
setshell:
  cmd.run:
    - name: chsh -s /bin/zsh {{ salt['environ.get']('USER') }}
#config cairodock
cairoconfig:
  cmd.run:
    - name: cp -r {{ salt['environ.get']('HOME') }}/salteh/.config {{ salt['environ.get']('HOME') }}
#config python3 as default
python3default:
  cmd.run:
    - name: sudo rm /usr/bin/python && sudo ln -s /usr/bin/python3 /usr/bin/python
