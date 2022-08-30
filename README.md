# Clark's Dotfiles

## To Use:
1. Use [YADM](https://yadm.io) to clone this repo

2. Clone my fork of [rofi-power-menu](https://www.github.com/ClarkHensley/rofi-power-menu) into the $HOME/.bin directory

3. Symlink the config file at $HOME/.config/pacman.conf to /etc/pacman.conf

4. Symlink the config file at $HOME/.config/firefox/userChrome.css to $HOME/.mozilla/firefox/\<profile\>/chrome/userChrome.css

    4a. Remember to enable custom user style in Firefox's about:config, setting toolkit.legacyUserProfileCustomizations.stylesheets to true

5. Symlink the config file at $HOME/.config/grub/grub to /etc/default/grub and run sudo update-grub

6. Symlink the config file at $HOME/.config/root/rootbashrc to /root/.bashrc

7. Symlink the config file at $HOME/.config/autologin/conf to /etc/runit/sv/agetty-tty1/conf

8. Symlink the correct config file in the $HOME/.config/sway_configs directory to $HOME/.config/sway/config

9. Symlink the correct config file in the $HOME/.config/waybar_configs directoy to $HOME/.config/waybar/config or $HOME/.config/waybar/style.css

10. Symlink the correct config file in the $HOME/.config/neofetch_configs directory to $HOME/.config/neofetch/config.conf

