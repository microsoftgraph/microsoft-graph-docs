# Working with Intune in Microsoft Graph  

Intune is a cloud-based enterprise mobility management (EMM) service that helps enable your workforce to be productive while keeping your corporate data protected.  To understand what's available in Intune, start here: [Introduction to Microsoft Intune](https://docs.microsoft.com/en-us/intune/understand-explore/introduction-to-microsoft-intune).   

In short, with Intune you can: 

* **Manage the mobile devices** your workforce uses to access company data. 
* **Manage the mobile apps** your workforce uses. 
* **Protect your company information** by helping to control the way your workforce accesses and shares it. 
* **Ensure devices and apps are compliant** with company security requirements.  

The Intune Graph API enables access to Intune information programmatically for your tenant, and the API performs the same Intune operations as those available through the **Azure Portal**.  For example, you could:

* Retrieve information about Intune managed applications.
* Create and assign a new Intune managed application to users. 
* Create a configuration policy to set Wi-Fi and VPN profiles for Intune-managed iOS or Android devices. 
* View device enrollment status for Intune managed devices view security compliance policy status for Intune managed devices.  

Intune provides data into the Microsoft Graph in the same way as other cloud services do, with rich entity information and relationship navigation.  Use Microsoft Graph to combine information from other services and Intune to build rich cross-service applications for IT professionals or end users.     

Here is an example of how you can determine whether an application is installed on a user's device: 

1. Get from Azure Active Directory a list of devices registered to a user: 

  https://graph.microsoft.com/{version}/{user}/ownedDevices 

2. Then view the list of applications for your tenant: 

  https://graph.microsoft.com/{version}/deviceAppManagement/mobileApps  

3. Take the ID from the application and determine the installation state for the application (and therefore user):

  https://graph.microsoft.com/{version}/deviceAppManagement/mobileApps/{id}/deviceStatuses/.

## Sections of the Intune Graph API documentation

The following sections provide the reference documentation for the Intune Graph API and resources:

- [Managed apps](intune_apps_app_conceptual.md)
- [Company terms and conditions](intune_company_conceptual.md)
- [Enroll corporate-owned devices](intune_corporate_enrollment_conceptual.md)
- [Device configuration](intune_device_configuration_conceptual.md)
- [App protection](intune_app_protection_conceptual.md)
- [Enroll devices for management](intune_onboarding_conceptual.md)
- [Role-based access control](intune_rbac_conceptual.md)
- [Telecom expense management](intune_tem_conceptual.md)

## To use the Table of Contents on the Microsoft Graph site
  
You can browse the Table of Contents (in the left pane of the site) to find the parts of the Intune Graph API and resource documentation you want to see.

1. Click **/Beta Reference** to open the beta docs.
2. Scroll down and click **Intune**.
3. Continue to click subsections below **Intune** for the parts of the API you want to see.
