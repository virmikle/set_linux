
echo ""
echo "| Минимальная настройка системы"
echo ""

echo ""
read -p ">>> Настройка для Fedora. Продолжаем? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then

sudo dnf upgrade
sudo dnf update
sudo dnf check-update
sudo dnf install gnome-tweaks
sudo dnf install steam
sudo dnf install code




flatpak update
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub org.remmina.Remmina
flatpak install flathub org.onlyoffice.desktopeditors
flatpak install flathub com.jgraph.drawio.desktop
flatpak install flathub org.kde.krita


gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward ['<Alt>Shift_L']
gsettings set org.gnome.desktop.wm.keybindings switch-input-source ['<Shift>Alt_L']
gsettings set org.gnome.desktop.peripherals.mouse speed -0.5

echo ""
echo "| Готово!"
else
echo "| Отмена!"
fi







