# This is the vm-nogui.nix file from nixos-generators.

{ pkgs, ... }:
let
  # https://unix.stackexchange.com/questions/16578/resizable-serial-console-window
  resize = pkgs.writeScriptBin "resize" ''
    old=$(/run/current-system/sw/bin/stty -g)
    /run/current-system/sw/bin/stty raw -echo min 0 time 5
    printf '\033[18t' > /dev/tty
    IFS=';t' read -r _ rows cols _ < /dev/tty
    /run/current-system/sw/bin/stty "$old"
    /run/current-system/sw/bin/stty cols "$cols" rows "$rows"
  '';
in {
  virtualisation.memorySize = 1024;
  virtualisation.graphics = false;
  virtualisation.qemu.options = [ "-serial mon:stdio" ];

  environment.systemPackages = [ resize pkgs.coreutils ]; # coreutils for stty
  environment.loginShellInit = "${resize}/bin/resize";

  users.users.root.password = "nixos";
  services.getty.autologinUser = pkgs.lib.mkDefault "root";
}
