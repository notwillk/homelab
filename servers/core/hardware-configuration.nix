# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "nvme" "usbhid" "usb_storage" "sd_mod" "sdhci_pci" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/7d164733-3e1d-442e-84cf-94e100ec7574";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/AA1C-6319";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/d792842a-fd35-4f34-9319-903159037fc9"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  #networking.useDHCP = lib.mkDefault true;
  networking.useDHCP = lib.mkDefault false;
  networking.interfaces = {
    enp1s0.useDHCP = lib.mkDefault false;
    enp3s0.useDHCP = lib.mkDefault false;
    enp4s0.useDHCP = lib.mkDefault false;
    enp0s20f0u4.useDHCP = lib.mkDefault false;
  };
  #networking.interfaces.enp0s20f0u4.useDHCP = lib.mkDefault true;
  #networking.interfaces.enp1s0.useDHCP = lib.mkDefault true;
  #networking.interfaces.enp3s0.useDHCP = lib.mkDefault true;
  #networking.interfaces.enp4s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
