[
  ./config/i18n.nix               # Used by top-level
  ./config/krb5/default.nix       # Used by pam
  ./config/ldap.nix               # Used by pam
  ./config/networking.nix         # Used by nixos-containers
  ./config/nsswitch.nix           # Used by systemd
  ./config/power-management.nix   # Used by wpa_supplicant
  ./config/resolvconf.nix         # Used by network-interfaces-scripted
  ./config/shells-environment.nix # Used by nix-daemon
  ./config/swap.nix               # Used by qemu-vm
  ./config/sysctl.nix             # Used by network-interfaces
  ./config/system-environment.nix # Used by terminfo
  ./config/system-path.nix        # Used by dbus
  ./config/terminfo.nix
  ./config/users-groups.nix       # Used by timesyncd
  ./hardware/all-firmware.nix     # Used by wpa_supplicant
  ./hardware/device-tree.nix      # Used by top-level
  ./misc/assertions.nix           # Used by systemd
  ./misc/extra-arguments.nix      # Used by lib/modules.nix
  ./misc/ids.nix                  # Used by dbus
  ./misc/lib.nix                  # Used by kernel
  ./misc/label.nix                # Used by version
  ./misc/meta.nix                 # Used by openvswitch
  ./misc/nixpkgs.nix              # Used by lib/eval-config.nix
  ./misc/version.nix              # Used by label
  ./programs/bash/bash.nix        # Used by bash-completion
  ./programs/bash/bash-completion.nix  # for enableCompletion, used by nix-daemon.nix
  ./programs/shadow.nix           # Used by bash
  ./programs/ssh.nix
  ./security/apparmor.nix         # Used by lxc
  ./security/oath.nix             # Used by pam
  ./security/pam.nix              # Used by systemd
  ./security/pam_usb.nix          # Used by pam
  ./security/pam_mount.nix        # Used by pam
  ./security/polkit.nix              # Used by networkmanager
  ./security/wrappers/default.nix    # Used by network-interfaces
  ./security/sudo.nix                # Used by terminfo
  ./services/desktops/geoclue2.nix   # Used by localtime
  ./services/hardware/udev.nix       # Used by kernel
  ./services/logging/rsyslogd.nix    # Used by systemd
  ./services/logging/syslog-ng.nix   # Used by systemd
  ./services/misc/nix-daemon.nix     # Used by installer tools, qemu-vm, stage-2
  ./services/misc/sssd.nix           # Used by pam
  ./services/networking/connman.nix  # Needed by qemu-vm
  ./services/networking/dhcpcd.nix   # Used by qemu-vm
  ./services/networking/firewall.nix # Used by openvswitch
  ./services/networking/iwd.nix            # Used by networkmanager
  ./services/networking/mstpd.nix          # Used by network-interfaces
  ./services/networking/multipath.nix      # Used by stage-1
  ./services/networking/networkmanager.nix # Used by resolved
  ./services/networking/racoon.nix         # Used by openvswitch
  ./services/networking/ssh/sshd.nix       # Used by sssd
  ./services/networking/wpa_supplicant.nix # Used by connman
  ./services/security/fprintd.nix          # used by pam
  ./services/system/dbus.nix
  ./services/system/nscd.nix
  ./system/activation/activation-script.nix
  ./system/activation/top-level.nix
  ./system/boot/kernel.nix
  ./system/boot/loader/efi.nix
  ./system/boot/loader/grub/grub.nix
  ./system/boot/loader/loader.nix
  ./system/boot/modprobe.nix
  ./system/boot/networkd.nix
  ./system/boot/resolved.nix
  ./system/boot/stage-1.nix
  ./system/boot/stage-2.nix
  ./system/boot/systemd.nix
  ./system/boot/timesyncd.nix # Used by qemu-vm
  ./system/boot/tmp.nix
  ./system/etc/etc.nix
  ./tasks/filesystems.nix
  ./tasks/network-interfaces.nix
  ./tasks/network-interfaces-systemd.nix
  ./tasks/network-interfaces-scripted.nix
  ./virtualisation/lxc.nix              # for lxc, used by pam.nix
  ./virtualisation/lxcfs.nix            # for lxcfs, used by pam.nix
  ./virtualisation/nixos-containers.nix # for isContainer, used by stage-1.nix, grub.nix
  ./virtualisation/openvswitch.nix      # for vswitch, used by network-interfaces.nix
  ./virtualisation/qemu-guest-agent.nix
]
