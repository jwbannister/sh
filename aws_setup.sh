mkdir .config
# copy ~/.config/R and ~/.config/nvim over from laptop
# copy ~/system over from lapton
ln -s ~/system/gitconfig .gitconfig
ln -s ~/system/tmux.conf .tmux.conf
ln -s ~/system/Rprofile .Rprofile
ln -s ~/system/vimrc .vimrc

sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
sudo apt update
sudo apt install r-base r-base-dev neovim gdal-bin python-gdal python3-gdal libgdal1-dev libproj-dev
