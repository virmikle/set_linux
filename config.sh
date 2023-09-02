
echo ""
echo "| Настройка системы и установка программ. Актуально для Fedora."
echo ""

echo ""
read -p ">>>Продолжаем? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then

sudo dnf update

sudo dnf install gnome-tweaks -q
sudo dnf install steam -q
sudo dnf install code -q

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
dconf reset -f /org/gnome/
gnome-extensions enable "dash-to-panel@jderose9.github.com"
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







