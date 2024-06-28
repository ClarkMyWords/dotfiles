# Clark's Dotfiles

## To Use:
1. Use [yadm](https://yadm.io) to clone this repo
    
2. yadm should automatically perform a `bootstrap` which will perform a number of post-processing steps.

3. Before cloning with yadm, be sure to set `yadm config local.class <class>`. I use the `Desktop` and `Laptop` classes, and one of these ***MUST*** be set for this to work.

4. However, yadm can't handle firefox profiles, so these must be done manually (it's the same userChrome profile for both the main Firefox and mail Firefox profiles):
```sh
ln -sf $HOME/.config/firefox/userChrome.css $HOME/.mozilla/firefox/\<profile\>/chrome/userChrome.css
```

5. Remember to enable custom user style in Firefox's about:config, setting toolkit.legacyUserProfileCustomizations.stylesheets to true in ***ALL*** profiles

6. A few files need to be sylinked or copied to locations in `/etc` or `/usr/share`. In lieu of having the `bootstrap` perform that, here are the commands:

7. `$HOME/.config/grub/grub` should be symlinked to `/etc/default/grub`, and then installed:
```sh
sudo ln -sf $HOME/.config/grub/grub /etc/default/grub
# Desktop
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Laptop
sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo grub-mkconfig -o /boot/efi/EFI/GRUB/grub.cfg
```

8. `$HOME/.config/pacman/pacman.conf` should be symlinked to `/etc/pacman.conf`:
```sh
sudo ln -sf $HOME/.config/pacman/pacman.conf /etc/pacman.conf
```
9. `$HOME/.config/lightdm/lightdm.conf` should be symlinked to `/etc/lightdm/lightdm.conf` and `$HOME/.config/lightdm/lightdm-gtk-greeter.conf` should be COPIED to `/etc/lightdm/lightdm-gtk-greeter.conf` (symlinking messes with LightDM-GTK-Greeter's permissions):
```sh
sudo ln -sf $HOME/.config/lightdm/lightdm.conf /etc/lightdm/lightdm.conf

sudo cp $HOME/.config/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
```


10. `$HOME/.config/sysimages/icon.png` and `$HOME/.config/sysimages/lockscreen.png` should be COPIED to `/usr/share/icons/custom` and `/usr/share/backgrounds/custom` respectively (again, symlinking messes with LightDM-GTK-Greeter's permissions):
```sh
sudo mkdir -p /usr/share/icons/custom
sudo cp $HOME/.config/sysimages/icon.png /usr/share/icons/custom/icon.png
sudo chmod 644 /usr/share/icons/custom/icon.png

sudo mkdir -p /usr/share/backgrounds/custom
sudo cp $HOME/.config/sysimages/lockscreen.png /usr/share/backgrounds/custom/lockscreen.png
sudo chmod 644 /usr/share/backgrounds/custom/lockscreen.png
```

11. ***On the Desktop***, `$HOME/.local/bin/multimonitor.sh` should be symlinked to `/usr/share/multimonitor.sh`:
```sh
sudo ln -sf $HOME/.local/bin/multimonitor.sh /usr/share/multimonitor.sh
```
