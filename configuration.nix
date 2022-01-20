{ config, pkgs, ... }:

{
  
  imports = [./hardware-configuration.nix];
  
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    kernelPackages = pkgs.linuxPackages_xanmod;
    extraModulePackages = with pkgs; [linuxKernel.packages.linux_xanmod.rtl8821ce];
    blacklistedKernelModules = [ "rtw88_8821ce" ];
  };

  networking = {
    hostName = "snowflake";
    useDHCP = false;
    interfaces.eno1.useDHCP = true;
    interfaces.wlo1.useDHCP = true;
    networkmanager.enable = true;
  };

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = ["en_US.UTF-8/UTF-8"];
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  time.timeZone = "Asia/Kolkata";

  hardware = {
    
    cpu = {
      intel.updateMicrocode = true;
    };

    enableAllFirmware = true;
    enableRedistributableFirmware = true;

    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [vaapiVdpau libvdpau-va-gl];
    };
  };

  qt5.enable = true;
  qt5.platformTheme = "gtk2";
  qt5.style = "gtk2";
  
  nixpkgs.config.allowUnfree = true;

  users.users.mayo = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" "audio"];
    shell = pkgs.zsh;
    home = "/home/mayo";
  };

  environment = {
    
    sessionVariables = with pkgs; {
      _JAVA_AWT_WM_NONREPARENTING = "1";
    };

    systemPackages = with pkgs; [
      neovim
      feh
      wget
      firefox
      git
      mesa
      pfetch
      htop
      pamixer
      pavucontrol
      lsd
      jdk
      xorg.xrandr
      mesa-demos
      discord
      google-chrome
      ranger
      lxappearance
      papirus-icon-theme
      arc-theme
      gotop
      gcc
      zip
      unzip
      gimp
      blender
      psmisc
      steam-run-native
      (steam.override {withJava = true; })
    ];
  };

  programs = {
    sway = {
      enable = true;

      extraPackages = with pkgs; [
        rofi
	waybar
	kitty
	wl-clipboard
	wayland-utils
	grim
	slurp
	autotiling
	qt5.qtwayland
	xdg_utils
	swaybg
	swaylock-effects
	swayidle
	light
	dunst
      ];

      extraSessionCommands = ''
        export XDG_SESSION_DESKTOP=sway
	export SDL_VIDEODRIVER=wayland
	export QT_QPA_PLATFORM=wayland-egl
	export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
	export MOZ_ENABLE_WAYLAND=1
	export CLUTTER_BACKEND=wayland
	export ECORE_EVAS_ENGINE=wayland-egl
	export ELM_ENGINE=wayland_eg
	export NO_AT_BRIDGE=1
      '';
    };
  };
  
  fonts = {
    fonts = with pkgs; [
      twemoji-color-font
      iosevka-bin
      (nerdfonts.override { fonts = ["FiraMono" "Overpass" "Mononoki" "Ubuntu"]; })
    ];

    fontconfig = {
      enable = true;

      defaultFonts = {
        serif = [
          "FiraMono Regular"
	];

	sansSerif = [
	  "FiraMono Regular"          
	];

	monospace = [
          "mononoki Nerd Font Mono"
	];

	emoji = ["Twitter Color Emoji"];
      };
    };
  };

  security = {
    protectKernelImage = true;
    rtkit.enable = true;
  };

  services = {
    
    pipewire = {
      enable = true;
      jack.enable = true;
      pulse.enable = true;
      media-session.enable = true;
    };

    xserver = {
      enable = true;
      videoDrivers = [ "modesetting" ];
      useGlamor = true;
      displayManager.lightdm.enable = true;
      layout = "us";
      libinput.enable = true;
      libinput.touchpad.tapping = true;
    };

    printing.enable = true;

  };

  xdg.portal.enable = true;

  zramSwap = {
    enable = true;
    memoryPercent = 100;
  };

  system.stateVersion = "21.11";

}
