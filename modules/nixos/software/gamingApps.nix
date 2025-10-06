{pkgs, ...}:
{
  environment.systemPackages = with pkgs;
  [
    heroic
    jstest-gtk
    libstrangle
    mangohud
    mangojuice
    protonplus
    ryubing
    shadps4
    vkbasalt
  ];
  programs =
  {
    gamescope =
    {
      enable = true;
    };
    gamemode =
    {
      enable = true;
      enableRenice = true;
    };
    steam =
    {
      enable = true;
      protontricks.enable = true;
    };
  };
}
