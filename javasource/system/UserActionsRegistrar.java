package system;

import com.mendix.core.actionmanagement.IActionRegistrator;

public class UserActionsRegistrar
{
  public void registerActions(IActionRegistrator registrator)
  {
    registrator.bundleComponentLoaded();
    registrator.registerUserAction(fiftyonedegrees.actions.DetectBrowser.class);
    registrator.registerUserAction(system.actions.VerifyPassword.class);
  }
}
