{ config, pkgs, ... }:

{
  environment =
  {
    systemPackages = with pkgs; [
      firefox
      rxvt_unicode
      termite
      xorg.xinit
      xorg.xmodmap
      zathura
    ];
  };

  fonts.fonts =
    with pkgs; [
      dejavu_fonts
      fira
      fira-code
      fira-mono
      noto-fonts
      powerline-fonts
      source-code-pro
      terminus_font
    ];


}

