{ config, pkgs, ... }:

{
  environment =
  {
    systemPackages = with pkgs; [
      dmd
      dub
      julia
      postgresql
      R
      sbcl
    ];
  };

}


