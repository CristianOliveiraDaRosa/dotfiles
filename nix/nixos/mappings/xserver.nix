{ config, ... }: 
{
  # Maps caps to ctrl
  services.xserver = {
    # Enable the X11 windowing system.
    enable = true;
    # Enable the GNOME Desktop Environment.
    displayManager.gdm.enable = true;

    # Configure keymap in X11
    layout = "us";
    xkbVariant = "altgr-intl";
    xkbOptions = "altwin:swap_lalt_lwin";

    # Keyboard repeat rate
    autoRepeatDelay = 200;
    autoRepeatInterval = 10;

    # Enable touchpad support (enabled default in most desktopManager).
    libinput.enable = true;
  };
}
