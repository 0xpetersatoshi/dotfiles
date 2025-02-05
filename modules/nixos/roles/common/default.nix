{
  lib,
  config,
  ...
}:
with lib; let
  cfg = config.roles.common;
in {
  options.roles.common = {
    enable = mkEnableOption "Enable common configuration";
  };

  config = mkIf cfg.enable {
    hardware = {
      networking.enable = true;
    };

    security = {
      yubikey.enable = true;
      gnupg.enable = true;
    };

    system = {
      nix.enable = true;
      boot.enable = true;
      locale.enable = true;
      zram.enable = true;
    };
    styles.stylix.enable = true;
  };
}
