
echo ""
echo "| Минимальная настройка системы"
echo ""

echo ""
read -p ">>> Настройка для Fedora. Продолжаем? (y/n) " choice
echo ""
if [ "$choice" == "y" ]; then

sudo dnf upgrade
sudo dnf update
sudo dnf install gnome-tweaks
sudo dnf install steam

gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward ['<Alt>Shift_L']
gsettings set org.gnome.desktop.wm.keybindings switch-input-source ['<Shift>Alt_L']

flatpak update
flatpak install Remmina
flatpak install onlyoffice
echo ""
echo "| Готово!"
else
echo "| Отмена!"
fi







