{ config, pkgs, ... }:

{
  environment =
  {
    systemPackages = with pkgs; [
      docker
      docker_compose
      emacs
      file
      git
      gnupg
      htop
      irssi
      jq
      lm_sensors
      manpages
      mpg123
      pass
      ranger
      tmux
      tree
      unzip
      vim
      wget
      zip
    ];
  };

  virtualisation.docker.enable = true;

}
