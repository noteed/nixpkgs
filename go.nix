{ nixpkgs ? ./.
, system ? builtins.currentSystem
}:
let
  pkgs = import nixpkgs {};
in
rec {
  normal = import "${toString nixpkgs}/nixos/lib/eval-config.nix" {
    inherit system;
    baseModules = import ./nixos/modules/module-list.nix;
    modules = [
      "${toString nixpkgs}/nixos/modules/virtualisation/qemu-vm.nix"
      "${toString nixpkgs}/nixos/modules/profiles/minimal.nix"
      # TODO Disable building Qemu docs, e.g. I saw logs mentionning /build/qemu/...
      ./vm-nogui.nix
    ];
  };

  minimal = import "${toString nixpkgs}/nixos/lib/eval-config.nix" {
    inherit system;
    baseModules = import ./nixos/modules/module-list-edited.nix;
    modules = [
      "${toString nixpkgs}/nixos/modules/virtualisation/qemu-vm.nix"
      "${toString nixpkgs}/nixos/modules/profiles/minimal-edited.nix"
      # TODO Disable building Qemu docs, e.g. I saw logs mentionning /build/qemu/...
      ./vm-nogui.nix
    ];
  };

  # Build with nix-build -A <attr>
  normal-toplevel = normal.config.system.build.toplevel;
  normal-runvm = normal.config.system.build.vm;
  minimal-toplevel = minimal.config.system.build.toplevel;
  minimal-runvm = minimal.config.system.build.vm;

  path = "${nixpkgs}";
}
