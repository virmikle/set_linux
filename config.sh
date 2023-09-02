
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


gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"
gsettings set org.gnome.desktop.peripherals.mouse speed -0.5

echo ""
echo "| Завершено"
else
echo "| Отменено"
fi







