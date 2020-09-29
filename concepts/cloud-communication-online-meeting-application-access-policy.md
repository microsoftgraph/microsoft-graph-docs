---
title: "Allow applications to access online meetings on behalf of a user"
description: "Find out how to configure applications to access online meetings on behalf of a user."
author: "frankpeng7"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Allow applications to access online meetings on behalf of a user

In some cases, such as for background services or daemon apps that run on a server without the presence of a signed-in user, it is appropriate for an app to call Microsoft Graph to take actions on behalf of a user. For example, an app might need to call Microsoft Graph to schedule multiple meetings based on published schedules (such as courses) or external scheduling tools. In these cases, the user that the application acts on behalf of is identified as the meeting organizer.

Administrators who want to allow an application to access online meeting resources on behalf of a user can use **New-CsApplicationAccessPolicy** and **Grant-CsApplicationAccessPolicy** PowerShell cmdlets to configure access control. This article covers the basic steps to configure an application access policy.

These steps are specific to online meetings and do not apply to other Microsoft Graph resources.

## Configure application access policy

To configure an application access policy and allow applications to access online meetings with application permissions:

1. Identify the app’s applcation (client) ID and the user IDs of the users on behalf of which the app will be authorized to access online meetings.

    - Identify the app’s application (client) ID in the [Azure app registration portal](https://portal.azure.com/#blade/Microsoft_AAD_RegisteredApps/ApplicationsListBlade).
    - Identify the user's user (object) ID in the [Azure user management portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade)

2. Connect to Skype for Business PowerShell with adminitrator account. For details, see [Manage Skype for Business Online with PowerShell](/microsoft-365/enterprise/manage-skype-for-business-online-with-microsoft-365-powershell).

3. Create an application access policy containing a list of app IDs.

    Run the following cmdlet, replacing the **Identity**, **AppIds**, and **Description** (optional) arguments.

    ```powershell
    New-CsApplicationAccessPolicy -Identity Test-policy -AppIds "ddb80e06-92f3-4978-bc22-a0eee85e6a9e", "ccb80e06-92f3-4978-bc22-a0eee85e6a9e", "bbb80e06-92f3-4978-bc22-a0eee85e6a9e" -Description "description here"
    ```

4. Grant the policy to the user to allow the app IDs contained in the policy to access online meetings on behalf of the granted user. 

   Run the following cmdlet, replacing the **PolicyName** and **Identity** arguments.

   ```powershell
   Grant-CsApplicationAccessPolicy -PolicyName Test-policy -Identity "ddb80e06-92f3-4978-bc22-a0eee85e6a9e"
   ```

> **Note** 
> 
> - _Identity_ refers to the policy name when creating the policy, but the user ID when granting the policy.
> - Changes to application access policies can take up to 30 minutes to take effect in Microsoft Graph REST API calls.

## Supported permissions and additional resources

Administrators can use ApplicationAccessPolicy cmdlets to control mailbox access for an app that has been granted any of the following application permissions:

- OnlineMeetings.Read.All
- OnlineMeetings.ReadWrite.All

For more information about configuring application access policy, see the [PowerShell cmdlet reference for New-ApplicationAccessPolicy](/powershell/module/skype/new-csapplicationaccesspolicy).

## Errors

You might encounter the following error when an API call is denied access due to an app trying to access an online meeting when application access policy is not configured.

```json
{
    "error": {
        "code": "Unauthorized",
        "message": "App <app_ID_redacted> is not authorized to Create meeting on behalf of user <user_ID_redacted>",
        "innerError": {
            "date": "<date_redacted>",
            "request-id": "599d9cb0-56ac-4dc5-b6f8-1456a1414609"
        }
    }
}
```

Follow the steps in this article to create and/or grant an application access policy that contains the app ID to the user ID.

## See also

- [Permissions reference](permissions-reference.md)
- [New-ApplicationAccessPolicy](/powershell/module/skype/new-csapplicationaccesspolicy)
- [Grant-ApplicationAccessPolicy](/powershell/module/skype/grant-csapplicationaccesspolicy)
- [Get-ApplicationAccessPolicy](/powershell/module/skype/get-csapplicationaccesspolicy)
- [Set-ApplicationAccessPolicy](/powershell/module/skype/set-csapplicationaccesspolicy)
- [Remove-ApplicationAccessPolicy](/powershell/module/skype/remove-csapplicationaccesspolicy)
