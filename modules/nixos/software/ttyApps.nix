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
    wf-recorder
  ];
  programs.fish =
  {
    enable = true;
  };
}
