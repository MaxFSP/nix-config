# NixOS Configuration

This is a NixOS configuration for my personal computer.

## Installation

1. Clone the repository:

```bash
git clone https://github.com/maximfarhan/nixos-config.git
```

2. Make sure to create your Nix configuration file:

```bash
Nixos-generate-config
```

3. Move the file to the correct location:

```bash
mv nixos-config $HOME/nix
```

4. Make sure to have everything well structured in the $HOME/nix directory

5. Run the following command to install the configuration:

```bash
sudo nixos-rebuild switch --flake .
```

6. Use the home-manager to install your packages:

```bash
home-manager switch --flake .
```

7. Reboot your computer and enjoy!

## Customization

You can customize the configuration by editing the `configuration.nix` file in the `$HOME/nix/nixos` directory.
