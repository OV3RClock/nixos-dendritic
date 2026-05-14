{ self, inputs, ... }:
{
  flake.nixosModules.commonPrograms =
  { config, lib, ... }:
  let
    # Check about:support for extension/add-on ID strings
    extensions = [
      "uBlock0@raymondhill.net"                 # uBlock Origin
      "vpn@proton.ch"                           # Proton VPN
      "jetpack-extension@dashlane.com"          # Dashlane
      "idcac-pub@guus.ninja"                    # I still dont care about cookies
      "{74145f27-f039-47ce-a470-a662b129930a}"  # ClearURLs
    ];
  in
  {
    options =
    {
      firefox.enable = lib.mkEnableOption "firefox";
    };
    
    config = lib.mkIf config.firefox.enable
    {
      programs.firefox = {
        enable = true;
        policies = {
          # https://firefox-admin-docs.mozilla.org/reference/policies/

          ### Bookmarks ###
          ManagedBookmarks = [
            {
              url = "https://account.proton.me/apps";
              name = "Proton";
            }
          ];
          DisplayBookmarksToolbar = "newtab";
          DisableSetDesktopBackground = true;

          ### Browser UI ###
          DisplayMenuBar = "default-off";

          ### Browsing restrictions ###
          PrivateBrowsingModeAvailability = 0;
          
          ### Cloud reporting ###
          ContentAnalysis = {
            Enabled = false;
          };
          CrashReportsSubmit = {
            ForceAutoSubmit = false;
          };

          ### Content settings ###
          TranslateEnabled = true;

          ### Device update settings ###
          DisableAppUpdate = true;

          ### Downloads ###
          PromptForDownloadLocation = false;
          StartDownloadsInTempDirectory = false;

          ### Extensions ###
          ExtensionSettings = builtins.listToAttrs (builtins.map (id: {
            name = id;
            value = {
              install_url = "https://addons.mozilla.org/firefox/downloads/latest/${id}/latest.xpi";
              installation_mode = "normal_installed";
            };
          }) extensions);
          ExtensionUpdate = true;
          InstallAddonsPermission = {
            Default = true;
          };

          ### Miscellaneous ###
          AIControls = {
            Default = {
              Value = "blocked";
              Locked = false
            };
            Translations = {
              Value = "blocked";
              Locked = false
            };
            PDFAltText = {
              Value = "blocked";
              Locked = false
            };
            SmartTabGroups = {
              Value = "blocked";
              Locked = false
            };
            LinkPreviewKeyPoints = {
              Value = "blocked";
              Locked = false
            };
            SidebarChatbot = {
              Value = "blocked";
              Locked = false
            };
            SmartWindow = {
              Value = "blocked";
              Locked = false
            };
          };
          DisableAccounts = true;
          DisableFirefoxAccounts = true;
          DisableFirefoxScreenshots = true;
          DisableFirefoxStudies = true;
          DisableTelemetry = true;
          GenerativeAI = {
            Enabled = false;
            Chatbot = false;
            LinkPreviews = false;
            TabGroups = false;
            Locked = false;
          };
          UserMessaging = {
            ExtensionRecommendations = false;
            FeatureRecommendations = false;
            UrlbarInterventions = false;
            SkipOnboarding = true;
            MoreFromMozilla = false;
            FirefoxLabs = false;
            Locked = false;
          };

          ### Network security ###
          Cookies = {
            Locked = false;
            Behavior = "reject-tracker";
            BehaviorPrivateBrowsing = "reject-tracker-and-partition-foreign";
          };
          DNSOverHTTPS = {
            Enabled = false;
          };
          EnableTrackingProtection = {
            Category = "strict";
            BaselineExceptions = false;
            ConvenienceExceptions = false;
          };
          HttpsOnlyMode = "enabled";

          ### Password manager ###
          AutofillAddressEnabled = false;
          AutofillCreditCardEnabled = false;
          PasswordManagerEnabled = false;
          OfferToSaveLoginsDefault = false;

          ### Printing ###
          PrintingEnabled = true;
          UseSystemPrintDialog = true;

          ### Search ###
          FirefoxSuggest = {
            WebSuggestions = false;
            SponsoredSuggestions = false;
            ImproveSuggest = false;
            Locked = false;
          };
          SearchEngines = {
            Default = "DuckDuckGo";
            PreventInstalls = false;
            Remove = [
              "Google"
              "Bing"
              "Perplexity"
              "Qwant"
              "Wikipedia (en)"
            ];
          };
          SearchSuggestEnabled = false;
          VisualSearchEnabled = false;

          ### Startup ###
          DontCheckDefaultBrowser = true;
          FirefoxHome = {
            Search = false;
            TopSites = false;
            SponsoredTopSites = false;
            Highlights = false;
            Pocket = false;
            Stories = false;
            SponsoredPocket = false;
            SponsoredStories = false;
            Snippets = false;
            Locked = false;
          };
          Homepage = {
            Locked = false;
            StartPage = "none";
          };
          NewTabPage = false;
          ShowHomeButton = false;
        };
      };
    };
  };
}






