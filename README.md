# git-shell
git, config and ssh files inside container and mount on local directory

Create Docker image.
```shell
git clone https://github.com/mijumall/git-shell.git
cd git-shell
docker compose build
```

Add this line to your .bashrc or .zshrc file.
```shell
alias gitsh='docker run --rm -ti -v `pwd`:/space git-shell bash'
```
