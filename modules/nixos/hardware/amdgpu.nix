{pkgs, config, lib, ...}:
{
  config = lib.mkIf (config.desktop.amd.enable)
  {
    chaotic.mesa-git =
    {
      enable = false;
    };
    hardware =
    {
      amdgpu.overdrive.enable = true;
      graphics.enable = true;
    };
    services.xserver.videoDrivers = 
    [
      "amdgpu"
    ];
    services =
    {
      lact.enable = true;
    };
  };
}