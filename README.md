# Transmission Daemon Indicator (Gnome Shell extension)

Monitor a remote transmission-daemon or transmission GTK app using its RPC interface.

This extension supports Gnome Shell DE, from version 3.4 up to 3.24

![Screenshot](https://github.com/donny85/gnome-shell-extension-transmission-daemon/raw/master/screenshots/screenshot.png)

![Add torrents](https://github.com/donny85/gnome-shell-extension-transmission-daemon/raw/master/screenshots/screenshot-add.png)

![Filter torrents by state](https://github.com/donny85/gnome-shell-extension-transmission-daemon/raw/master/screenshots/screenshot-filter.png)

## Installation

### Via extensions.gnome.org

https://extensions.gnome.org/extension/365/transmission-daemon-indicator/

### Manual installation

    git clone git://github.com/eonpatapon/gnome-shell-extension-transmission-daemon.git
    # For gnome-shell < 3.10 use the gnome-shell-3.8 branch
    # For gnome-shell < 3.16 use the gnome-shell-3.14 branch
    # For gnome-shell < 3.30 use the gnome-shell-3.18 branch
    
    cd gnome-shell-extension-transmission-daemon

    make install

Restart the shell and then enable the extension.

## Configuration

### With the transmission daemon

Enable the RPC interface in ``/etc/transmission-daemon/settings.json``.

See https://trac.transmissionbt.com/wiki/EditConfigFiles for complete documentation.

Set the host/port settings in the extension configuration.

### With the GTK transmission application

In the preferences enable the web client.
