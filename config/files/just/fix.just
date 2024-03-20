[fix-update]
sudo rpm-ostree upgrade
flatpak update
sudo -i nix nix-update
distrobox upgrade -a
nix flake update $HMCONFIG

[fix-blue-rebuild]
echo "This is not currently implemented"
# sudo bluebuild rebase $CONFIG/$RECIPE_URI/$RECIPE.YML

[fix-blue-upgrade]
echo "This is not currently implemented"
sudo bluebuild upgrade $CONFIG/$RECIPE_URI/$RECIPE.YML

[fix-blue-build]
bluebuild build $CONFIG/$RECIPE_URI/$RECIPE.YML

[fix-home-rebuild]
home-manager switch --flake $HMCONFIG


# something something nix profile install https://flakehub.com/f/bluebuild/cli/*.tar.gz#bluebuild
# create a program to automate the build process of nix, home-manager, bluebuild, everything
