# Working with Intune in Microsoft Graph  

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

The Microsoft Graph API for Intune enables programmatic access to Intune information for your tenant; the API performs the same Intune operations as those available through the **Azure Portal**.  

For mobile device management (MDM) scenarios, the Graph API for Intune supports standalone deployments; Intune [hybrid deployments](https://docs.microsoft.com/en-us/sccm/mdm/understand/choose-between-standalone-intune-and-hybrid-mobile-device-management) are not supported. 

## Using the Intune Graph API

Intune provides data into the Microsoft Graph API in the same way as other cloud services do, with rich entity information and relationship navigation.  Use Microsoft Graph API to combine information from other services and Intune to build rich cross-service applications for IT professionals or end users.     

Here is an example of how you can determine whether an application is installed on a user's device: 

1. Get from Azure Active Directory a list of devices registered to a user: 

    https://graph.microsoft.com/users/{user}/ownedDevices 

2. Then view the list of applications for your tenant: 

    https://graph.microsoft.com/deviceAppManagement/mobileApps  

3. Take the ID from the application and determine the installation state for the application (and therefore user):

    https://graph.microsoft.com/deviceAppManagement/mobileApps/{id}/deviceStatuses/


## Using permission scopes

Microsoft Graph API controls access to resources using permission scopes. As a developer, you must specify the permission scopes you need to access Intune resources. Typically, you specify the permission scopes you need in the Azure Active Directory portal. For more information, see [Microsoft Graph permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) and [Intune permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes#permission-scopes-in-preview).

## Next Steps

- Learn [how to use Azure AD](https://docs.microsoft.com/en-us/intune/intune-graph-apis) to access the Microsoft Graph API for Intune.  
- Explore the [PowerShell Intune samples](https://github.com/microsoftgraph/powershell-intune-samples), which show how to use Graph API for Intune in context of working examples.