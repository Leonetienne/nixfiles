{ config, pkgs, ... }:

{
  # Enable the NUR (nix user repository).
  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  programs.firefox = {
     enable = true;
     package = pkgs.wrapFirefox pkgs.firefox-unwrapped {
       extraPolicies = {
         DisableFirefoxStudies = true;
         DisablePocket = true;
         DisableTelemetry = true;
         DisableFirefoxAccounts = true;
         NoDefaultBookmarks = true;
         OfferToSaveLogins = false;
         OfferToSaveLoginsDefault = false;
         PasswordManagerEnabled = false;
         FirefoxHome = {
             Search = true;
             Pocket = false;
             Snippets = false;
             TopSites = false;
             Highlights = false;
         };
         UserMessaging = {
             ExtensionRecommendations = false;
             SkipOnboarding = true;
         };
       };
     };
     profiles = {
       nixmage = {
         id = 0;
         name = "nixname";
         isDefault = true;
         extensions = with pkgs.nur.repos.rycee.firefox-addons; [
           ublock-origin
           bitwarden
           youtube-shorts-block
           wappalyzer
           youtube-nonstop
           dracula-dark-colorscheme
           tridactyl
         ];
       };
     };
   };
}
