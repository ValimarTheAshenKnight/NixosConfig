{pkgs, config, lib, ...}:
{
  imports =
  [
    ./graphicsConfig/lact.nix
  ];
  config = lib.mkIf (config.desktop.amd.enable)
  {
    boot.kernelParams =
    [
      "amdgpu.ppfeaturemask=0xfffd7fff"
    ];
    chaotic.mesa-git =
    {
      enable = false;
    };
    hardware.graphics =
    {
      enable = true;
    };
    services.xserver.videoDrivers = 
    [
      "amdgpu"
    ];
  };
}