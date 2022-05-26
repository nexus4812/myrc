force_color_prompt=yes
PS1='${debian_chroot:+($debian_chroot)}\[\e[38;05;74m\]\u\[\e[00m\]@\[\e[38;05;250m\]\h\[\e[00m\]:\[\e[38;05;172m\]\w\[\e[00m\]\$ '

DIR=$(dirname $(readlink  ~/.zshrc))
. $DIR/setup.sh
. $DIR/slim.sh
. $DIR/package_alias.sh