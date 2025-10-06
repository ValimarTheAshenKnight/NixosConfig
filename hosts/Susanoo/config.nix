{config, ...}:
{
  imports =
  [
    ./hostSpecific/nixos/hardware-configuration.nix
    ./hostSpecific/nixos/storageConfig.nix
    ./hostSpecific/nixos/userConfig.nix
  ];
  desktop =
  {
    amd =
    {
      enable = true;
      amdvlk = false;
    };
    printing =
    {
      enable = true;
    };
    software =
    {
      flatpak = false;
      virtualization = false;
    };
    system =
    {
      locale = "en_GB.UTF-8";
      timeZone = "Europe/Zurich";
    };
  };
}
