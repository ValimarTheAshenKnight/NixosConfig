{pkgs, ...}:
{
  environment.systemPackages = with pkgs;
  [
    git
    lazygit
    nix-prefetch-git
    psmisc
    unrar
    unzip
    usbutils
  ];
  programs.fish =
  {
    enable = true;
  };
}
