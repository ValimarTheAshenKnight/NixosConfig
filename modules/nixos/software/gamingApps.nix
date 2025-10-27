{pkgs, ...}:
{
  environment.systemPackages = with pkgs;
  [
    heroic
    mangohud
    mangojuice
    protonplus
    ryubing
    shadps4
    vkbasalt
    jstest-gtk
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
