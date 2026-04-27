{ config, lib, pkgs, inputs, ... }:
{
  inputs.home = {
    username = "valentin";
    homeDirectory = "/home/valentin";
  };
}