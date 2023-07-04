# Clark's Dotfiles

## To Use:
1. Use [YADM](https://yadm.io) to clone this repo

2. Clone my fork of [rofi-power-menu](https://www.github.com/ClarkHensley/rofi-power-menu) into the $HOME/.bin directory

    2a. Move the rofi-power-menu script into the .bin directory, either by copying it from the directory, or via symlinks

3. Symlink the config file at $HOME/.config/pacman/pacman.conf to /etc/pacman.conf

4. Symlink the config file at $HOME/.config/firefox/userChrome.css to $HOME/.mozilla/firefox/\<profile\>/chrome/userChrome.css

    4a. Remember to enable custom user style in Firefox's about:config, setting toolkit.legacyUserProfileCustomizations.stylesheets to true

5. Symlink the correct config file in the $HOME/.config/grub driectory to /etc/default/grub and run

```shell
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

6. Symlink the config file at $HOME/.config/autologin/conf to /etc/runit/sv/agetty-tty1/conf

7. Symlink the correct config file in the $HOME/.config/neofetch\_configs directory to $HOME/.config/neofetch/config.conf

8. Symlink the correct image file in $HOME/.config/sysimages to $HOME/.config/sysimages/LockScreen.png. See META.md in that directory to generate new Lock Screens depending on your monitor geometry.

9. Symlink the correct config file in the $HOME/.config/i3\_configs directory to $HOME/.config/i3/config
