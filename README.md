# myrc

Set up dotfiles

## Usage (Symbolic link)

```bash
$ git clone git@github.com:nexus4812/myrc.git
$ cd myrc

# .zshrc
$ ln -s $(realpath shell/.zshrc) ~

# .vimrc
$ ln -s $(realpath vim/.vimrc) ~
```

## Usage (Overwrite)

```bash
# .bashrc or .zshrc
$ curl -fsSl https://raw.githubusercontent.com/nexus4812/myrc/main/shell/slim.sh >> ~/.zshrc # or ~/.bashrc

# .vimrc
$ curl -fsSl https://raw.githubusercontent.com/nexus4812/myrc/main/vim/.vimrc >> ~/.vimrc

# brew
$ curl -fsSl https://raw.githubusercontent.com/nexus4812/myrc/main/brew/brew.txt | xargs -I {} brew install {}
```

## Update brew dependencies

```bash
$ source brew/update.sh
```
