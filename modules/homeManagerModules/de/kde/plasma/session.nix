{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  {
    programs.plasma = {
      session = {
        general.askForConfirmationOnLogout = true;
        sessionRestore.restoreOpenApplicationsOnLogin = "startWithEmptySession";
      };
    };
  };
}