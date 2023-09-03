
echo ""
echo "| Настройка системы и установка программ. Актуально для Fedora."
echo "| *после окончания установки и выхода из профиля, нужно открыть приложение Менеджер расширений и включить расширение Dash to Panel."
echo ""

echo ""
read -p ">>>Продолжаем? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then


sudo dnf update && sudo dnf upgrade --refresh && sudo dnf install curl gamemode icoutils libcurl wget zenity bubblewrap zstd cabextract tar goverlay openssl
wget -c "https://github.com/Castro-Fidel/PortWINE/raw/master/portwine_install_script/PortProton_1.0" && sh PortProton_1.0 -rus
sudo dnf install gnome-tweaks -q
sudo dnf install steam -q
sudo dnf install code -q

sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

flatpak update
flatpak install flathub com.mattjakeman.ExtensionManager --noninteractive -y 
flatpak install flathub org.remmina.Remmina --noninteractive -y 
flatpak install flathub org.onlyoffice.desktopeditors --noninteractive -y
flatpak install flathub com.jgraph.drawio.desktop --noninteractive -y
flatpak install flathub org.kde.krita --noninteractive -y
flatpak install flathub org.telegram.desktop --noninteractive -y



cd ~/.local/share/gnome-shell/extensions/
git clone "https://github.com/home-sweet-gnome/dash-to-panel.git";
cd "dash-to-panel/";

sudo dnf install gettext -y
sudo dnf install make -y

make install
gnome-extensions disable "background-logo@fedorahosted.org"


gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"
gsettings set org.gnome.desktop.peripherals.mouse speed -0.5


echo ""
echo "| Завершено, сейчас будет выполнен принудительный выход из системы"
killall -SIGQUIT gnome-shell

else
echo "| Отменено"
fi







