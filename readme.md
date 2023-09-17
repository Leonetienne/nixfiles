This is my systems nix configuration.  
The master file is `master.nix` and includes all the other "sub configurations".

Other files lying around in the repo-root configure various stuff:
- `audio.nix` Configures alsa, pipewire, pusleaudio, wireplumber, and xdg desktop portal to enable media sessions
- `bluetooth.nix` Enables the bluetooth hardware, service, and installs cli tools to pair devices
