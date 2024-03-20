[nix-install]
cd $HOME
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install --no-confirm
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh 
ln -s .nix-profile/share/applications .local/share/applications

[full-nix-setup]
just nix-install
nix run home-manager/master -- init --switch

[nix-uninstall]
/nix/nix-installer uninstall 


