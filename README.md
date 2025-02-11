# Setup

### Mac

```bash
mkdir -p .bin
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.bin init --apply rfushimi
```

### Linux

```bash
mkdir -p .bin
apt update && \
  apt install -y curl git zsh && \
  chsh -s /usr/bin/zsh && \
  sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.bin init --apply rfushimi
```
