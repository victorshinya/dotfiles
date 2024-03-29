# homebrew
if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update homebrew and package
brew update & brew upgrade

# install all packages
brew install git
brew install go
brew install node
brew install yarn
brew install python
brew install cocoapods
brew install carthage
brew install imagemagick
brew install tesseract
brew install opencv
brew install cacli
brew install mongodb
brew install mysql
brew install postgresql
brew install docker
brew install kubernetes-cli
brew install openshift-cli
brew install minikube
brew install helm
brew install travis
brew install drone-cli
brew install circleci
brew install terraform
brew install wget
brew install youtube-dl
brew install serverless
brew install k6
brew install nmap
brew install telnet
brew install hugo

# install AWS packages
brew tap aws/tap
brew install copilot

# remove outdated versions
brew cleanup

# run git setup
chmod +x ./git_setup.sh
./git_setup.sh

# install aws cli
if test ! $(which aws); then
    curl -L "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
    sudo installer -pkg AWSCLIV2.pkg -target /
    rm AWSCLIV2.pkg
fi
echo "AWS CLI version:" $(aws --version)

# install aws sam cli
if test ! $(which sam); then
    curl -L "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-macos-x86_64.pkg" -o "AWSSAMCLI.pkg"
    sudo installer -pkg AWSSAMCLI.pkg -target /
    rm AWSSAMCLI.pkg
fi
echo "AWS SAM CLI version:" $(sam --version)

# install all npm packages
npm i -g nodemon
npm i -g @angular/cli
npm i -g gatsby-cli
npm i -g pm2
npm i -g aws-cdk

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

# setup zsh
cp .zshrc ~/.zshrc

# set zsh as default shell
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)
