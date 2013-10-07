# facter-updates-available

A tiny facter fact which retrieves information about currently available updates, very similar to what is displayed when logging into an Ubuntu system.

## Examples

Display the number of package updates available for this system:

```bash
$ facter updates_available_normal
7
```

Display how many of those are security updates:

```bash
$ facter updates_available_security
0
```

Display a list of packages which can be updated.

```bash
$ facter updates_available_packages
liblxc0,google-musicmanager-beta,python3-lxc,lxc-templates,ifupdown,lxc,google-talkplugin
```

## Issues

Takes too long to load, almost six seconds on my work machine. Needs a quick caching mechanism.
