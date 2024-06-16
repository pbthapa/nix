# nix

# Install home-manager in macos

# To install specific release:
nix run home-manager/release-24.05 -- init --switch
# or unstable version,
nix run home-manager/master -- init --switch

The above action will create home-manager folder with minimum configuration as mentioned below in the /Users/<username>/.config folder location.
1. flake.nix
2. flake.lock
3. home.nix

After successful completion of above step, to build and activate the flake-based configuration, run command: home-manager switch

You can create a symlink to point home-manager from any other directory too.
Here, ~/.config/home-manager is copied to another folder location which under version control. For example: $HOME/projects/nix
Then, the symlink is created for home-manager.
ln -s $HOME/projects/nix/home-manager home-manager
After this, the 'home-manager switch' command works also on $HOME/projects/nix/home-manager.

To remove symlink: unlink home-manager

Further configurations present in repository to configure tmux and so on.

The makefile already have home-manager switch and nix garbage collection shortcut commands.

Program: fzf
Keybindings:
C-r -> History of commands executed
C-t ->:
**<TAB> -> Autocompletion showing list of files in the current directory

