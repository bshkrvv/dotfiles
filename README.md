# Apply configuration
```./run.sh```

# Additional steps

## machinectl shell gdm@ /bin/bash
```
gsettings set org.gnome.desktop.interface clock-format '12h'
```

## /etc/default/grub
```
GRUB_TIMEOUT=0
GRUB_CMDLINE_LINUX="rhgb quiet i915.enable_psr=0"

sudo grub2-mkconfig -o /etc/grub2.cfg
sudo grub2-mkconfig -o /etc/grub2-efi.cfg
```

## /etc/systemd/logind.conf
```
HandleLidSwitchExternalPower=ignore
```

