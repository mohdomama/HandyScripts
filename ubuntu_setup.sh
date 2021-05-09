#### Handy Command Line Tools ####
sudo apt update
sudo apt install -y vim tmux htop iotop nload sysstat git  python3-pip
sudo apt python-pip # For older versions of ubuntu


#### VSCode  ####
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install -y code
# NOTE: after the installation is complete, check the list of PPA repositories, Microsoft add a duplicate entry.
#       open Software Sources and disable/remove the duplicate entry


#### ZSH ####
# install zsh shell
sudo apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
sed -i 's#plugins=(git)#plugins=( \n git \n colored-man-pages \n zsh-autosuggestions \n zsh-history-substring-search \n zsh-syntax-highlighting \n )#g' $HOME/.zshrc

# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# sed -i 's#ZSH_THEME="robbyrussell"#ZSH_THEME="powerlevel10k/powerlevel10k"#g' $HOME/.zshrc

# set zsh as the default shell
chsh -s $(which zsh)
# Reboot After This


#### VirtualEnvWrapper ####
sudo apt install python3-pip
pip3 install virtualenvwrapper
# Add the following lines in .zshrc
'''
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv
source  ~/.local/bin/virtualenvwrapper.sh
# Important: the virtualenvwrapper.sh, virtualenv script can also be in `/usr/local/bin`
# Check before making changes to the .*rc file.
'''


#### Terminator #### 
sudo apt install terminator


#### Chrome ####
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb