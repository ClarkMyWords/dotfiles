# Clark's Dotfiles

## To Use:
1. Use [yadm](https://yadm.io) to clone this repo
    1a. yadm should automatically perform a `bootstrap` which will perform a number of post-processing stepsS

    1b. Before cloning with yadm, be sure to set `yadm config local.class <class>`. I use the `Desktop` and `Laptop` classes, and one of these ***MUST*** be set for this to work.

However, yadm can't handle firefox profiles, so these must be done manually:

2. Symlink the config file at $HOME/.config/firefox/userChrome.css to $HOME/.mozilla/firefox/\<profile\>/chrome/userChrome.css and the $HOME/.mozilla/firefox/\<profile\>/chrome/userChrome.css
    2a. Remember to enable custom user style in Firefox's about:config, setting toolkit.legacyUserProfileCustomizations.stylesheets to true in ***BOTH*** profiles
