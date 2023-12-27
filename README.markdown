# DOLL AUR :woman_technologist: :ribbon:

![GitHub CI](https://github.com/angeldollface/doll-aur/actions/workflows/main.yml/badge.svg)

***A doll's Arch Linux User Repository! :woman_technologist: :ribbon:***

## ABOUT :books:

I recently saw a video by [DistroTube here](https://youtu.be/CYqd2AHXosk?si=l6HpXiYyCSWkBYP0) in which he creates his own package repository for Arch Linux systems. Since distributing some of the code I write has been an issue, I thought I would follow his guide and make my own Arch Linux package repository. This repository contains a build script, packages, and `PKGBUILD` files. Enjoy! :heart:

## USAGE :hammer:

I shall assume that you are running some flavor of Arch Linux. Add the following lines to the file `/etc/pacman.conf` to use this package repository.

```CONF
[doll-aur]
SigLevel = Optional DatabaseOptional
Server = https://angeldollface.art/$repo/$arch
```

Once you have added these lines, run the following command:

```
sudo pacman -Syyu
```

## AVAILABLE PACKAGES :black_nib:

Any of the available packages can be installed with this command:

```
sudo pacman -S package_name
```

`package_name` represents any of the packages listed below.

- Chirp: [GitHub repository](https://github.com/angeldollface/chirp)
- Luhny: [GitHub repository](https://github.com/angeldollface/luhny.rs)
- Flek: [GitHub repository](https://github.com/angeldollface/flek)
- Stawp: [GitHub repository](https://github.com/angeldollface/stawp)
- Mandy: [GitHub repository](https://github.com/angeldollface/mandy)
- Doll Cipher: [GitHub repository](https://github.com/angeldollface/doll-cipher)

## CONTRIBUTE :people_hugging:

If you would like to add your own package, make sure you are running Arch Linux or a derivative of it. You must also have the `base-devel` and `git` packages installed. This can be done with the `pacman` command.
Follow these steps to add your own package:

- 1.) Clone the repository to your machine:

```
git clone https://github.com/angeldollface/doll-aur.git
```

- 2.) Change directory into the repository's root:

```
cd doll-aur
```

- 3.) Remove the output directory:

```
rm -rf output
```

- 4.) Create a new directory in the `pkgs` directory (`name_of_your_package` represents the name of your package.):

```
mkdir -p pkgs/name_of_your_package
```

- 5.) Create and write your `PKGBUILD` file in this directory.

- 6.) Change directory into the repository's root and run the following command:

```bash
cd src && bash.build.sh
```

- 7.) If everything went without problems, there should now be a directory in the repository's root called `output`. This directory should contain a sub-folder called `x86_64`. This folder should contain your package.

- 8.) Stage your changes, commit your changes, push your changes, and file a PR.

# NOTE :scroll:

- *Doll AUR :woman_technologist: :ribbon:* by Alexander Abraham :black_heart: a.k.a. *"Angel Dollface" :dolls: :ribbon:*
- Licensed under the MIT license.

