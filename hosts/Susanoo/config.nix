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
    };
    printing =
    {
      enable = false;
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
