{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "max";
    homeDirectory = "/home/max";
    stateVersion = "24.11";
  };
}