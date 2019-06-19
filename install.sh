# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update homebrew and package
brew update & brew upgrade

# install all packages
brew install git
brew install go
brew install node
brew install python
brew install imagemagick
brew install tesseract
brew install opencv
brew install mongodb
brew install docker
brew install docker-compose
brew install kubernetes-cli
brew install travis
brew install drone-cli
brew install circleci
brew install terraform
brew install wget
brew install youtube-dl
brew install serverless
brew install wsk

# remove outdated versions
brew cleanup

# run git setup
chmod +x ./git_setup.sh
./git_setup.sh

# TODO: install ibm cloud cli

# install all npm packages
npm i -g nodemon
npm i -g @angular/cli
npm i -g create-react-app
npm i -g gatsby-cli

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# TODO: setup oh-my-zsh plugins
