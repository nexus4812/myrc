echo -e $(realpath *.zsh | xargs -I arg echo "source arg\n") >> ~/.zshrc
