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
printf '[dupunkto]\nServer = https://repo.dupunkto.org/arch/any\n' >> /etc/pacman.conf
pacman -Sy lift
```

## Debian / Ubuntu

```sh
echo 'deb [trusted=yes] https://repo.dupunkto.org/debian stable main' > /etc/apt/sources.list.d/dupunkto.list
apt update
apt install lift
```
