{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      zsh      
    ];

    username = "jonas";
    homeDirectory = "/home/jonas";

    # You do not need to change this if you're reading this in the future.
    # Don't ever change this after the first build.  Don't ask questions.
    stateVersion = "23.11";
  };

  programs.zsh = {
    # Your zsh config
    oh-my-zsh = { # "ohMyZsh" without Home Manager
      enable = true;
      plugins = [ "git" "thefuck" ];
      theme = "powerlevel10k";
    };
  };

}