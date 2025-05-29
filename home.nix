{ config, pkgs, ... }:

{
  # TODO please change the username & home directory to your own
  home.username = "scott";
  home.homeDirectory = "/home/scott";

  home.packages = with pkgs; [
  helix
  btop
  lsp-ai
  nil
  nix-output-monitor
  vim
  lm_sensors
  ];

  programs.git = {
    enable = true;
    userName = "brokenpike";
    userEmail = "brokenpike@garmr.org";
  };

  home.stateVersion = "25.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;

}

