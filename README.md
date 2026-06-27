# {du}punkto package repo

Package repo for tools maintained by {du}punkto.

## Homebrew

```sh
brew tap dupunkto/repo https://git.dupunkto.org/~dupunkto/repo.git
brew trust dupunkto/repo
brew install lift
```

## Gentoo

```sh
eselect repository add dupunkto git https://git.dupunkto.org/~dupunkto/repo.git
emaint sync -r dupunkto
emerge app-containers/lift
```

## Arch linux

```sh
curl -fsSL https://repo.dupunkto.org/keyring.asc | pacman-key --add -
pacman-key --lsign-key 67129351629DE9FDD6382A22F3A58BE3EB77795B
printf '[dupunkto]\nServer = https://repo.dupunkto.org/arch/any\n' >> /etc/pacman.conf
pacman -Sy dupunkto-keyring lift
```

> The `dupunkto-keyring` package lets pacman pick up future key rotations
> automatically, so the `pacman-key` steps only have to be executed once.

## Debian / Ubuntu

```sh
echo 'deb [trusted=yes] https://repo.dupunkto.org/debian stable main' > /etc/apt/sources.list.d/dupunkto.list
apt update
apt install lift
```
