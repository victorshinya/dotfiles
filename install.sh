# homebrew
if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update homebrew and package
brew update & brew upgrade

# install all packages
brew install git
brew install go
brew install glide
brew install dep
brew install node
brew install yarn
brew install python
brew install cocoapods
brew install carthage
brew tap ibm-swift/kitura
brew install kitura
brew install imagemagick
brew install tesseract
brew install opencv
brew install cacli
brew install mongodb
brew install mysql
brew install postgresql
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
brew tap cloudfoundry/tap
brew install cf-cli

# remove outdated versions
brew cleanup

# run git setup
chmod +x ./git_setup.sh
./git_setup.sh

# install ibm cloud cli
curl -sL https://ibm.biz/idt-installer | bash
ibmcloud login -a cloud.ibm.com --sso
ibmcloud target --cf
ibmcloud plugin install cloud-functions
ibmcloud plugin install cloud-databases
ibmcloud plugin install cloud-object-storage
ibmcloud plugin install container-registry
ibmcloud plugin install kubernetes-service

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

# setup zsh
cp .zshrc ~/.zshrc

# set zsh as default shell
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
