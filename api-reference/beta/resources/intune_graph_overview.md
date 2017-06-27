# Working with Intune in Microsoft Graph  

The Intune Graph API enables access to Intune information programmatically for your tenant, and the API performs the same Intune operations as those available through the **Azure Portal**.  

## Considerations

1.  You need an [active Intune license](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) to use the Microsoft Graph APIs to configure Intune controls and policies.

1.  For mobile device management (MDM) scenarios, Graph APIs support Intune standalone environments; [hybrid environments](https://docs.microsoft.com/en-us/sccm/mdm/understand/choose-between-standalone-intune-and-hybrid-mobile-device-management) are not supported.

## Sections of the Intune Graph API documentation

The following sections provide the reference documentation for the Intune Graph API and resources:

- [Managed apps](intune_apps_app_conceptual.md)
- [Company terms and conditions](intune_company_conceptual.md)
- [Enroll corporate-owned devices](intune_corporate_enrollment_conceptual.md)
- [Device configuration](intune_device_configuration_conceptual.md)
- [Device managmement](intune_devicefe_conceptual.md)
- [App protection](intune_app_protection_conceptual.md)
- [Enroll devices for management](intune_onboarding_conceptual.md)
- [Role-based access control](intune_rbac_conceptual.md)
- [Telecom expense management](intune_tem_conceptual.md)

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
3. Continue to click subsections below **Intune** for the parts of the API you want to see.
