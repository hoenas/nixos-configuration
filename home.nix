{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
    ];

  # Set username
  username = "jonas";
  homeDirectory = "/home/jonas";

  stateVersion = "25.05";
  };
}
