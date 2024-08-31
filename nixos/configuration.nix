{ inputs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./nvidia-configuration.nix
    ./packages.nix
    ./modules/bundle.nix
  ];

  disabledModules = [
    ./modules/xserver.nix
  ];

  nixpkgs.overlays = [ inputs.polymc.overlay ];

  networking.hostName = "max-nixos"; # Define your hostname.

  time.timeZone = "America/La_Paz"; # Set your time zone.

  i18n.defaultLocale = "en_US.UTF-8"; # Select internationalisation properties.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "24.11";

}