{config, ...}:
let
  mainMonitorRes = "3840x2160";
  mainMonitorPos = "3840x0";
  defaultRefreshRate = "120.00";
  mainMonitor = "desc:Samsung Electric Company Odyssey G70B H1AK500000";
  sideMonitor = "desc:Samsung Electric Company U32J59x HTPK701828";
 # Wallpapers
  wallpaperOne = "~/Pictures/Wallpapers/DoomSlayerDE.png";
  wallpaperTwo = "~/Pictures/Wallpapers/DoomSlayerDTDA.png";
  lockedWallpaper = "~/Pictures/Wallpapers/DoomSlayerDTDA.png";
in
{
  desktop.system.mainMon =
  {
    name = "DP-1";
    res = mainMonitorRes;
    pos = mainMonitorPos;
    maxHz = "143.99";
    midHz = defaultRefreshRate;
    lowHz = "60.00";
  };
  wayland.windowManager.hyprland.settings.monitor =
  [
    "${mainMonitor}, ${mainMonitorRes}@${defaultRefreshRate}, ${mainMonitorPos}, 1"
    "${sideMonitor}, preferred, 0x0, 1"
    ", preferred, auto, 1"
  ];
  services.hyprpaper.settings =
  {
    preload =
    [
      "${wallpaperOne}"
      "${wallpaperTwo}"
    ];
    wallpaper =
    [
      "${mainMonitor}, ${wallpaperOne}"
      "${sideMonitor}, ${wallpaperTwo}"
    ];
  };
  programs.hyprlock.settings.background =
  {
    path = "${lockedWallpaper}";
    zindex = -2;
  };
}
