# Working with Intune in Microsoft Graph  

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

The Microsoft Graph API for Intune enables programmatic access to Intune information for your tenant; the API performs the same Intune operations as those available through the **Azure Portal**.  

For mobile device management (MDM) scenarios, the Graph API for Intune supports standalone deployments; Intune [hybrid deployments](https://docs.microsoft.com/en-us/sccm/mdm/understand/choose-between-standalone-intune-and-hybrid-mobile-device-management) are not supported. 

## Using the Intune Graph API

Intune provides data into the Microsoft Graph in the same way as other cloud services do, with rich entity information and relationship navigation.  Use Microsoft Graph to combine information from other services and Intune to build rich cross-service applications for IT professionals or end users.     

Here is an example of how you can determine whether an application is installed on a user's device: 

1. Get from Azure Active Directory a list of devices registered to a user: 

    https://graph.microsoft.com/beta/users/{user}/ownedDevices 

2. Then view the list of applications for your tenant: 

    https://graph.microsoft.com/beta/deviceAppManagement/mobileApps  

3. Take the ID from the application and determine the installation state for the application (and therefore user):

    https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{id}/deviceStatuses/


## Using Graph permission scopes

Microsof Graph controls access to resources using permission scopes. As a developer, you must specify the permission scopes you need to access Intune resources. Typically, you specify the permission scopes you need in the Azure Active Directory portal. For more information, see [Microsoft Graph permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) and [Intune permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes#permission-scopes-in-preview).

## To use the Table of Contents on the Microsoft Graph site
  
You can browse the Table of Contents (in the left pane of the site) to find the parts of the Intune Graph API and resource documentation you want to see.

1. Click **/Beta Reference** to open the beta docs.
2. Scroll down and click **Intune**.
3. Continue to click subsections below **Intune** for the parts of the API you 
