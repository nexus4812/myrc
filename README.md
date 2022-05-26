# myrc

Set up dotfiles

## Usage (Symbolic link)

```bash
$ git clone git@github.com:nexus4812/myrc.git

# .zshrc
$ ln -s $(realpath myrc/zsh/.zshrc) ~

# .vimrc
$ ln -s $(realpath myrc/zsh/.vimrc) ~
```

## Usage (Overwrite)

```bash
# .zshrc
$ curl -fsSl https://raw.githubusercontent.com/nexus4812/myrc/main/zsh/.zshrc >> ~/.zshrc

# .vimrc
$ curl -fsSl https://raw.githubusercontent.com/nexus4812/myrc/main/vim/.vimrc >> ~/.vimrc

# brew
$ curl -fsSl https://raw.githubusercontent.com/nexus4812/myrc/main/brew/brew.txt | xargs -I {} brew install {}
```

## Update brew dependencies

```bash
$ source brew/update.sh
```
