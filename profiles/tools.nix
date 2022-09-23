{ config, pkgs, ... }:

let
  tools = with pkgs; [
    # formatters/linters
    nixpkgs-fmt
    shfmt
    treefmt
    yamllint

    # misc
    neofetch
    cloc
    wakatime
    pwgen
    ripgrep
    wget
    pass
    openssl_3
    pinentry_mac
    bazelisk
    tmate
    mdbook
    aria
    htop
    jq
    bat
    z3
    tmux
    ffmpeg_5
    speedtest-cli

    # git 
    gitAndTools.git-ignore

    # c/c++
    clang_14
    clang-tools_14
    cmake
    fmt
    pkg-config

    # dhall
    dhall
    dhall-lsp-server
    dhall-nix
    dhall-json

    # ocaml
    opam

    # nix
    nix-du
    nix-tree
    nix-prefetch-git
    niv
    cachix
  ];
in
{
  home.packages = tools;
}
