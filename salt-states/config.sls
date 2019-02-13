zshconfig:
  cmd.run:
    - name: cp {{ salt['environ.get']('HOME') }}/salteh/.zshrc {{ salt['environ.get']('HOME') }}/.zshrc
cairoconfig:
  cmd.run:
    - name: cp -r {{ salt['environ.get']('HOME') }}/salteh/.config {{ salt['environ.get']('HOME') }}/
