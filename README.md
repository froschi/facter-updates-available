# facter-updates-available

A tiny facter fact which retrieves information about currently available updates, very similar to what is displayed when logging into an Ubuntu system.

## Examples

```bash
$ facter updates_available_normal
0
```

```bash
$ facter updates_available_security
7
```

```bash
$ facter updates_available_packages
liblxc0,google-musicmanager-beta,python3-lxc,lxc-templates,ifupdown,lxc,google-talkplugin
```

## Issues

Takes too long to load, almost six seconds on my work machine. Needs a quick caching mechanism.
