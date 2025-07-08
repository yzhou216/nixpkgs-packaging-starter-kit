# nixpkgs-packaging-starter-kit

A Flake based starter kit for building packages for
[Nixpkgs](https://github.com/NixOS/nixpkgs).

# Dependencies

- [`nix`](https://nix.dev/install-nix) with [Flake](https://nix.dev/concepts/flakes.html) enabled (Required)
- [`direnv`](https://direnv.net/) for automatically loading the development shell (Optional)

# Get started

Clone the repository

```sh
$ git clone https://github.com/yzhou216/nixpkgs-packaging-starter-kit
```

Enter the development shell manually, if you don't have `direnv` setup

```sh
$ nix develop
```

Implement package derivation

```sh
$ make init
```

Attempt building the package

```sh
$ make
```

Refer to [`Makefile`](Makefile) for other `make` targets

# It builds and works great!  What's next?

Yay!  Now you can follow
[this](https://github.com/NixOS/nixpkgs/blob/master/CONTRIBUTING.md)
guide and open a pull requests to upstream it to Nixpkgs.

# License

Dual licensed under [BSD Zero
Clause](https://spdx.org/licenses/0BSD.html) **or**
[CC0](https://creativecommons.org/public-domain/cc0/)
