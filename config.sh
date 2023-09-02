
echo ""
echo "| Минимальная настройка системы"
echo ""

echo ""
read -p ">>> Настройка для Fedora. Продолжаем? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then

sudo dnf update

sudo dnf install gnome-tweaks
sudo dnf install steam
sudo dnf install code

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
echo "| Готово!"
else
echo "| Отмена!"
fi







