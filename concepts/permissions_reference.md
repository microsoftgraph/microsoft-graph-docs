# Microsoft Graph permissions reference 
Microsoft Graph exposes granular permissions that control the access that apps have to resources, like users, groups, and mail. As a developer, you decide which permissions for Microsoft Graph your app requests. When a user signs in to your app they, or, in some cases, an administrator, are given a chance to consent to these permissions. If the user consents, your app is given access to the resources and APIs that it has requested. For apps that don't take a signed-in user, permissions can be pre-consented to by an administrator when the app is installed or during sign-up. 

## Delegated permissions, Application permissions, and effective permissions
Microsoft Graph has two types of permissions: **delegated permissions** and **application permissions**. 

- **Delegated permissions** are used by apps that have a signed-in user present. For these apps either the user or an administrator consents to the permissions that the app requests and the app is delegated permission to act as the signed-in user when making calls to Microsoft Graph. Some delegated permissions can be consented to by non-administrative users, but some higher-privileged permissions require [administrator consent](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-scopes#admin-restricted-scopes).  

- **Application permissions** are used by apps that run without a signed-in user present; for example, apps that run as background services or daemons.  Application permissions can only be [consented by an administrator](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-scopes#requesting-consent-for-an-entire-tenant). 

_Effective permissions_ are the permissions that your app will have when making requests to Microsoft Graph. It is important to understand the difference between the delegated and application permissions that your app is granted and its effective permissions when making calls to Microsoft Graph.

- For delegated permissions, the _effective permissions_ of your app will be the least privileged intersection of the delegated permissions the app has been granted (via consent) and the privileges of the currently signed-in user. Your app can never have more privileges than the signed-in user. Within organizations, the privileges of the signed-in user may be determined by policy or by membership in one or more administrator roles. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-assign-admin-roles).<br/><br/>For example, assume your app has been granted the _User.ReadWrite.All_ delegated permission. This permission nominally grants your app permission to read and update the profile of every user in an organization. If the signed-in user is a global administrator, your app will be able to update the profile of every user in the organization. However, if the signed-in user is not in an administrator role, your app will be able to update only the profile of the signed-in user. It will not be able to update the profiles of other users in the organization because the user that it has permission to act on behalf of does not have those privileges.
  
- For application permissions, the _effective permissions_ of your app will be the full level of privileges implied by the permission. For example, an app that has the _User.ReadWrite.All_ application permission can update the profile of every user in the organization. 

### Microsoft Graph permission names
Microsoft Graph permission names follow a simple pattern: _resource.operation.constraint_. For example, _User.Read_ grants permission to read the profile of the signed-in user, _User.ReadWrite_ grants permission to read and modify the profile of the signed-in user, and _Mail.Send_ grants permission to send mail on behalf of the signed-in user. 

The _constraint_ element of the name determines the potential extent of access your app will have within the directory. Currently Microsoft Graph supports the following constraints: 

* **All** grants permission for the app to perform the operations on all of the resources of the specified type in a directory. For example, _User.Read.All_ potentially grants the app privileges to read the profiles of all of the users in a directory. 
* **Shared** grants permission for the app to perform the operations on resources that other users have shared with the signed-in user. This constraint is mainly used with Outlook resources like mail, calendars, and contacts. For example, _Mail.Read.Shared_, grants privileges to read mail in the mailbox of the signed-in user as well as mail in mailboxes that other users in the organization have shared with the signed-in user.
* **AppFolder** grants permission for the app to read and write files in a dedicated folder in OneDrive. This constraint is only exposed on [Files permissions](#files-permissions) and is only valid for Microsoft accounts.
* If **no constraint** is specified the app is limited to performing the operations on the resources owned by the signed-in user. For example, _User.Read_ grants privileges to read the profile of the signed-in user only, and _Mail.Read_ grants permission to read only mail in the mailbox of the signed-in user.

> **Note**: In delegated scenarios, the effective permissions granted to your app may be constrained by the privileges of the signed-in user in the organization.

### Microsoft accounts and work or school accounts

Not all permissions are valid for both Microsoft accounts and work or school accounts. You can check **Remarks** for each permission group to determine whether a specific permission is valid for Microsoft accounts, work or school accounts, or both. 

### User and group search limitations for guest users in organizations

User and group search capabilities allow the app to search for any user or group in an organization's directory by performing queries against the `/users` or `/groups` resource set (for example, `https://graph.microsoft.com/v1.0/users`). Both administrators and users have this capability; however, guest users do not. 

If the signed-in user is a guest user, depending on the permissions an app has been granted, it can read the profile of a specific user or group (for example, `https://graph.microsoft.com/v1.0/users/241f22af-f634-44c0-9a15-c8cd2cea5531`); however, it cannot perform queries against the `/users` or `/groups` resource set that potentially return more than a single resource. 

With the appropriate permissions, the app can read the profiles of users or groups that it obtains by following links in navigation properties; for example, `/users/{id}/directReports` or `/groups/{id}/members`.


## Bookings permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Bookings.Read.All_ |  Allows an app to read Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user. | Intended for read-only applications. Typical target user is the customer of a booking business. | No |
| _Bookings.ReadWrite.Appointments_ | Allows an app to read and write Bookings appointments and customers, and additionally allows reading businesses, services, and staff on behalf of the signed-in user. | Intended for scheduling applications which need to manipulate appointments and customers. Cannot change fundamental information about the booking business, nor its services and staff members. Typical target user is the customer of a booking business.| No |
| _Bookings.ReadWrite.All_ | Allows an app to read and write Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user. Does not allow create, delete, or publish of Bookings businesses. | Intended for management applications that manipulate existing businesses, their services and staff members. Cannot create, delete, or change the publishing status of a booking business. Typical target user is the support staff of an organization.| No |
| _Bookings.Manage_ | Allows an app to read, write, and manage Bookings appointments, businesses, customers, services, and staff on behalf of the signed-in user.  | Allows the app to have full access. <br>Intended for a full management experience. Typical target user is the administrator of an organization.| No |

#### Application permissions

None.

### Example usage

#### Delegated

* _Bookings.Read.All_: Get the ID and names of the collection of Bookings businesses that has been created for a tenant (`GET /bookingBusinesses`).
* _Bookings.ReadWrite.Appointments_: Create an appointment for a service at a Bookings business (`POST /bookingBusinesses/{id}/appointments`).
* _Bookings.ReadWrite.All_: Create a new service for the specified Bookings business (`POST /bookingBusinesses/{id}/services`).
* _Bookings.Manage_: Make the scheduling page of this business available to external customers (`POST /bookingBusinesses/{id}/publish`).

---

## Calendars permissions

#### Delegated permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Calendars.Read_ |Read user calendars |Allows the app to read events in user calendars. |No |
| _Calendars.Read.Shared_ |Read user and shared calendars |Allows the app to read events in all calendars that the user can access, including delegate and shared calendars. |No |
| _Calendars.ReadWrite_ |Have full access to user calendars |Allows the app to create, read, update, and delete events in user calendars. |No |
| _Calendars.ReadWrite.Shared_ |Read and write user and shared calendars |Allows the app to create, read, update and delete events in all calendars the user has permissions to access. This includes delegate and shared calendars.|No |

<br/>

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Calendars.Read_ |Read calendars in all mailboxes |Allows the app to read events of all calendars without a signed-in user. |Yes |
|_Calendars.ReadWrite_ |Read and write calendars in all mailboxes |Allows the app to create, read, update, and delete events of all calendars without a signed-in user. |Yes |

<br/>

### Remarks

_Calendars.Read.Shared_ and _Calendars.ReadWrite.Shared_ are only valid for work or school accounts. All other permissions are valid for both Microsoft accounts and work or school accounts.

### Example usage

#### Delegated

* _Calendars.Read_: Get events on the user's calendar between April 23, 2017 and April 29, 2017 (`GET /me/calendarView?startDateTime=2017-04-23T00:00:00&endDateTime=2017-04-29T00:00:00`).
* _Calendars.Read.Shared_: Find meeting times where all attendees are available (`POST /users/{id|userPrincipalName}/findMeetingTimes`).
* _Calendars.ReadWrite_: Add an event to the user's calendar (`POST /me/events`).

#### Application

* _Calendars.Read_: Find events in a conference room's calendar organized by bob@contoso.com (`GET /users/{id | userPrincipalName}/events?$filter=organizer/emailAddress/address eq 'bob@contoso.com'`).
* _Calendars.Read_: List all events on a user's calendar for the month of May (`GET /users/{id | userPrincipalName}/calendarView?startDateTime=2017-05-01T00:00:00&endDateTime=2017-06-01T00:00:00`)
* _Calendars.ReadWrite_: Add an event to a user's calendar for approved time off  (`POST /users/{id | userPrincipalName}/events`).
* _Calendars.Send_: Send a message (`POST /users/{id | userPrincipalName}/sendCalendars`).


For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## Contacts permissions

#### Delegated permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Contacts.Read_ |Read user contacts  |Allows the app to read user contacts. |No |
|_Contacts.Read.Shared_ |Read user and shared contacts |Allows the app to read contacts that the user has permissions to access, including the user's own and shared contacts. |No |
|_Contacts.ReadWrite_ |Have full access to user contacts |Allows the app to create, read, update, and delete user contacts. |No |
|_Contacts.ReadWrite.Shared_ |Read and write user and shared contacts |Allows the app to create, read, update and delete contacts that the user has permissions to, including the user's own and shared contacts. |No |

#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Contacts.Read_ |Read contacts in all mailboxes |Allows the app to read all contacts in all mailboxes without a signed-in user. |Yes |
|_Contacts.ReadWrite_ |Read and write contacts in all mailboxes |Allows the app to create, read, update, and delete all contacts in all mailboxes without a signed-in user. |Yes |

### Remarks
Only the _Contacts.Read_ and _Contacts.ReadWrite_ delegated permissions are valid for Microsoft accounts. 

### Example usage
#### Delegated

* _Contacts.Read_: Read a contact from one of the top-level contact folders of the signed-in user (`GET /me/contactfolders/{Id}/contacts/{id}`).
* _Contacts.ReadWrite_: Update the contact photo of one of the signed-in user's contacts (`PUT /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value`). 
* _Contacts.ReadWrite_: Add contacts to the root folder of the signed-in user (`POST /me/contacts`).

#### Application

* _Contacts.Read_: Read contacts from one of the top-level contact folders of any user in the organization (`GET /users/{id | userPrincipalName}/contactfolders/{Id}/contacts/{id}`). 
* _Contacts.ReadWrite_: Update the photo for any contact of any user in an organization (`PUT /user/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value`). 
* _Contacts.ReadWrite_: Add contacts to the root folder of any user in the organization (`POST /users/{id | userPrincipalName}/contacts`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## Device permissions

#### Delegated permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Device.Read_ |Read user devices |Allows the app to read a user's list of devices on behalf of the signed-in user. |No |
|_Device.Command_ |Communicate with user devices |Allows the app to launch another app or communicate with another app on a user's device on behalf of the signed-in user. |No |


#### Application permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_Device.ReadWrite.All_ |Read and write devices |Allows the app to read and write all device properties without a signed in user. Does not allow device creation, device deletion, or update of device alternative security identifiers. |Yes |

### Remarks

The _Device.Read_ and _Device.Command_ delegated permissions are valid only for personal Microsoft accounts.

### Example usage

#### Application

* _Device.ReadWrite.All_: Read all registered devices in the organization (`GET /devices`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## Intune Device Management permissions

#### Delegated permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
|_DeviceManagementApps.Read.All_ | Read Microsoft Intune apps | Allows the app to read the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes |
|_DeviceManagementApps.ReadWrite.All_ | Read and write Microsoft Intune apps | Allows the app to read and write the properties, group assignments and status of apps, app configurations and app protection policies managed by Microsoft Intune. | Yes |
|_DeviceManagementConfiguration.Read.All_ | Read Microsoft Intune device configuration and policies | Allows the app to read properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes |
|_DeviceManagementConfiguration.ReadWrite.All_ | Read and write Microsoft Intune device configuration and policies  | Allows the app to read and write properties of Microsoft Intune-managed device configuration and device compliance policies and their assignment to groups. | Yes |
|_DeviceManagementManagedDevices.PrivilegedOperations.All_ | Perform user-impacting remote actions on Microsoft Intune devices | Allows the app to perform remote high impact actions such as wiping the device or resetting the passcode on devices managed by Microsoft Intune. | Yes |
|_DeviceManagementManagedDevices.Read.All_ | Read Microsoft Intune devices | Allows the app to read the properties of devices managed by Microsoft Intune. | Yes |
|_DeviceManagementManagedDevices.ReadWrite.All_ | Read and write Microsoft Intune devices | Allows the app to read and write the properties of devices managed by Microsoft Intune. Does not allow high impact operations such as remote wipe and password reset on the device’s owner. | Yes |
|_DeviceManagementRBAC.Read.All_ | Read Microsoft Intune RBAC settings | Allows the app to read the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes |
|_DeviceManagementRBAC.ReadWrite.All_ | Read and write Microsoft Intune RBAC settings | Allows the app to read and write the properties relating to the Microsoft Intune Role-Based Access Control (RBAC) settings. | Yes |
|_DeviceManagementServiceConfig.Read.All_ | Read Microsoft Intune configuration | Allows the app to read Intune service properties including device enrollment and third party service connection configuration. | Yes |
|_DeviceManagementServiceConfig.ReadWrite.All_ | Read and write Microsoft Intune configuration | Allows the app to read and write Microsoft Intune service properties including device enrollment and third party service connection configuration. | Yes |

#### Application permissions

None.

### Remarks

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

These permissions are only valid for work or school accounts.

### Example usage

#### Application

* _DeviceManagementServiceConfiguration.Read.All_: Check the current state of the Intune subscription (`GET /deviceManagement/subscriptionState`).
* _DeviceManagementServiceConfiguration.ReadWrite.All_: Create new Terms and Conditions (`POST /deviceManagement/termsAndConditions`).
* _DeviceManagementConfiguration.Read.All_: Find the status of a device configuration (`GET /deviceManagement/deviceConfigurations/{id}/deviceStatuses`).
* _DeviceManagementConfiguration.ReadWrite.All_: Assign a device compliance policy to a group (`POST deviceCompliancePolicies/{id}/assign`).
* _DeviceManagementApps.Read.All_: Find all the Windows Store apps published to Intune (`GET /deviceAppManagement/mobileApps?$filter=isOf('microsoft.graph.windowsStoreApp')`).
* _DeviceManagementApps.ReadWrite.All_: Publish a new application (`POST /deviceAppManagement/mobileApps`).
* _DeviceManagementRBAC.Read.All_: Find a role assignment by name (`GET /deviceManagement/roleAssignments?$filter=displayName eq 'My Role Assignment'`).
* _DeviceManagementRBAC.ReadWrite.All_: Create a new custom role (`POST /deviceManagement/roleDefinitions`).
* _DeviceManagementManagedDevices.Read.All_: Find a managed device by name (`GET /managedDevices/?$filter=deviceName eq 'My Device'`).
* _DeviceManagementManagedDevices.ReadWrite.All_: Remove a managed device (`DELETE /managedDevices/{id}`).
* _DeviceManagementManagedDevices.PrivilegedOperations.All_: Reset the passcode on a user's managed device (`POST /managedDevices/{id}/resetPasscode`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## Directory permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Directory.Read.All_ |Read directory data | Allows the app to read data in your organization's directory, such as users, groups and apps. **Note**: Users may consent to applications that require this permission if the application is registered in their own organization’s tenant.| Yes |
| _Directory.ReadWrite.All_ |Read and write directory data | Allows the app to read and write data in your organization's directory, such as users, and groups. It does not allow the app to delete users or groups, or reset user passwords. | Yes |
| _Directory.AccessAsUser.All_ |Access directory as the signed-in user  | Allows the app to have the same access to information in the directory as the signed-in user. | Yes |

<br/>

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Directory.Read.All_ | Read directory data | Allows the app to read data in your organization's directory, such as users, groups and apps, without a signed-in user. | Yes |
| _Directory.ReadWrite.All_ | Read and write directory data | Allows the app to read and write data in your organization's directory, such as users, and groups, without a signed-in user. Does not allow user or group deletion. | Yes |

### Remarks
Directory permissions are not supported on Microsoft accounts. 

Directory permissions provide the highest level of privilege for accessing directory resources such as [User](../api-reference/v1.0/resources/user.md), [Group](../api-reference/v1.0/resources/group.md), and [Device](../api-reference/v1.0/resources/device.md) in an organization. 

They also exclusively control access to other directory resources like: [organizational contacts](../api-reference/beta/resources/orgcontact.md), [schema extension APIs](../api-reference/beta/resources/schemaextension.md), [Privileged Identity Management (PIM) APIs](../api-reference/beta/resources/privilegedidentitymanagement_root.md), as well as many of the resources and APIs listed under the **Azure Active Directory** node in the v1.0 and beta API reference documentation. These include administrative units, directory roles, directory settings, policy, and many more. 

The _Directory.ReadWrite.All_ permission grants the following privileges:

- Full read of all directory resources (both declared properties and navigation properties)
- Create and update users
- Disable and enable users (but not company administrator)
- Set user alternative security id (but not administrators)
- Create and update groups
- Manage group memberships
- Update group owner
- Manage license assignments
- Define schema extensions on applications
- **Note**: No rights to reset user passwords
- **Note**: No rights to delete resources (including users or groups)
- **Note**: Specifically excludes create or update for resources not listed above. This includes: application, oAauth2Permissiongrant, appRoleAssignment, device, servicePrincipal, organization, domains, and so on.
 

### Example usage

#### Delegated
* _Directory.Read.All_: List all administrative units in an organization (`GET /beta/administrativeUnits`)
* _Directory.ReadWrite.All_: Add members to a directory role (`POST /directoryRoles/{id}/members/$ref`)

#### Application
* _Directory.Read.All_: List all memberships of a user, including directory roles and administrative units (`GET /beta/users/{id}/memberOf`)
* _Directory.Read.All_: List all group members, including service principals (`GET /beta/groups/{id}/members`)
* _Directory.ReadWrite.All_: Add an owner to a group (`POST /groups/{id}/owners/$ref`)


For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Education permissions

#### Delegated permissions

|Permission |Display String |Description | Admin Consent Required |
|:--------- |:------------- |:---------- | :--------------------- |
|EduAdministration.Read | Read education app settings |  Allows the app to read education app settings on behalf of the user. | Yes |
|EduAdministration.ReadWrite | Manage education app settings | Allows the app to manage education app settings on behalf of the user. | Yes |
|EduAssignments.ReadBasic | Read users' class assignments without grades | Allows the app to read assignments without grades on behalf of the user | Yes |
|EduAssignments.ReadWriteBasic | Read and write users' class assignments without grades | Allows the app to read and write assignments without grades on behalf of the user | Yes |
|EduAssignments.Read | Read users' view of class assignments and their grades | Allows the app to read assignments and their grades on behalf of the user| Yes |
|EduAssignments.ReadWrite | Read and write users' view of class assignments and their grades | Allows the app to read and write assignments and their grades on behalf of the user|Yes |
|EduRostering.ReadBasic| Read a limited subset of users' view of the roster | Allows the app to read a limited subset of the data from the  structure of schools and classes in an organization's roster and  education-specific information about users to be read on behalf of the user.  | Yes  |


#### Application permissions

| Permission | Display String | Description | Admin Consent Required |
| :--------- | :------------- | :---------- | :--------------------- |
|EduAssignments.ReadBasic.All| Read class assignments without grades|Allows the app to read assignments without grades for all users| Yes |
|EduAssignments.ReadWriteBasic.All | Read and write class assignments without grades | Allows the app to read and write assignments without grades for all users| Yes |
|EduAssignments.Read.All| Read class assignments with grades | Allows the app to read assignments and their grades for all users | Yes |
|EduAssignments.ReadWrite.All | Read and write class assignments with grades | Allows the app to read and write assignments and their grades for all users | Yes |
|EduRostering.ReadBasic.All | Read a limited subset of the organization's roster. | Allows the app to read a limited subset of both the structure of schools and classes in an organization's roster and education-specific information about all users. | Yes |
|EduRostering.Read.All | Read the organization's roster. | Allows the app to read the structure of schools and classes in the organization's roster and education-specific information about all users to be read. | Yes |
|EduRostering.ReadWrite.All| Read and write the organization's roster. | Allows the app to read and write the structure of schools and classes in the organization's roster and education-specific information about all users to be read and written.  | Yes |

### Example usage

#### Delegated

* _EduAssignments.Read_: Get the signed-in student's assignment information (`GET /education/classes/<id>/assignments/<id>`)
* _EduAssignments.ReadWriteBasic_: Submit signed-in student assignment (`GET /education/classes/<id>/assignments/<id>submit`)
* _EduRoster.ReadBasic_: Classes a signed-in user attends or teaches (`GET /education/classes/<id>/members`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

## Files permissions

#### Delegated permissions

|Permission |Display String |Description | Admin Consent Required |
|:--------- |:------------- |:---------- | :--------------------- |
| _Files.Read_ | Read user files | Allows the app to read the signed-in user's files. | No |
| _Files.Read.All_ | Read all files that user can access | Allows the app to read all files the signed-in user can access. | No |
| _Files.ReadWrite_  | Have full access to user files | Allows the app to read, create, update, and delete the signed-in user's files. | No|
| _Files.ReadWrite.All_ | Have full access to all files user can access | Allows the app to read, create, update, and delete all files the signed-in user can access. | No |
| _Files.ReadWrite.AppFolder_ | Have full access to the application's folder (preview) | (Preview) Allows the app to read, create, update, and delete files in the application's folder. | No |
| _Files.Read.Selected_  | Read files that the user selects | **Limited support in Microsoft Graph; see Remarks** <br/> (Preview) Allows the app to read files that the user selects. The app has access for several hours after the user selects a file.  | No |
| _Files.ReadWrite.Selected_ | Read and write files that the user selects | **Limited support in Microsoft Graph; see Remarks** <br/> (Preview) Allows the app to read and write files that the user selects. The app has access for several hours after the user selects a file. | No |

#### Application permissions

| Permission | Display String | Description | Admin Consent Required |
| :--------- | :------------- | :---------- | :--------------------- |
| _Files.Read.All_ | Read files in all site collections | Allows the app to read all files in all site collections without a signed in user.  | Yes |
| _Files.ReadWrite.All_ | Read and write files in all site collections | Allows the app to read, create, update, and delete all files in all site collections without a signed in user. | Yes |

### Remarks

The Files.Read, Files.ReadWrite, Files.Read.All, and Files.ReadWrite.All delegated permissions are valid on both personal Microsoft accounts and work or school accounts.
Note that for personal accounts, Files.Read and Files.ReadWrite also grant access to files shared with the signed-in user. 

The Files.Read.Selected and Files.ReadWrite.Selected delegated permissions are only valid on work or school accounts and are only exposed for working with [Office 365 file handlers (v1.0)](https://msdn.microsoft.com/office/office365/howto/using-cross-suite-apps).
They should not be used for directly calling Microsoft Graph APIs. 

The Files.ReadWrite.AppFolder delegated permission is only valid for personal accounts and is used for accessing the [App Root special folder](https://dev.onedrive.com/misc/appfolder.htm) with the OneDrive [Get special folder](../api-reference/v1.0/api/drive_get_specialfolder.md) Microsoft Graph API.


### Example usage

#### Delegated

* _Files.Read_: Read files stored in the signed-in user's OneDrive (`GET /me/drive/root/children`)
* _Files.Read.All_: Read files shared with the signed-in user (`GET /me/drive/root/sharedWithMe`)
* _Files.ReadWrite_: Write a file in the signed-in user's OneDrive (`PUT /me/drive/root/children/filename.txt/content`)
* _Files.ReadWrite.All_: Write a file shared with the user (`PUT /users/rgregg@contoso.com/drive/root/children/file.txt/content`)
* _Files.ReadWrite.AppFolder_: Write files into the app's folder in OneDrive (`PUT /me/drive/special/approot/children/file.txt/content`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## Group permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Group.Read.All_ |    Read all groups | Allows the app to list groups, and to read their properties and all group memberships on behalf of the signed-in user.  Also allows the app to read calendar, conversations, files, and other group content for all groups the signed-in user can access. | Yes |
| _Group.ReadWrite.All_ |    Read and write all groups| Allows the app to create groups and read all group properties and memberships on behalf of the signed-in user.  Additionally allows group owners to manage their groups and allows group members to update group content. | Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Group.Read.All_ | Read all groups | Allows the app to read memberships for all groups without a signed-in user. Note that not all group API supports access using app-only permissions. See [known issues](../concepts/known_issues.md) for examples. | Yes |
| _Group.ReadWrite.All_ | Read and write all groups | Allows the app to create groups, read and update group memberships, and delete groups. All of these operations can be performed by the app without a signed-in user. Note that not all group API supports access using app-only permissions. See [known issues](../concepts/known_issues.md) for examples.| Yes |


### Remarks

Group functionality is not supported on personal Microsoft accounts. 

For Office 365 groups, Group permissions grant the app access to the contents of the group; for example, conversations, files, notes, and so on. 

For application permissions, there are some limitations for the APIs that are supported. For more information, see [known issues](../concepts/known_issues.md).

In some cases, an app may need [Directory permissions](#directory-permissions) to read some group properties like `member` and `memberOf`. For example, if a group has a one or more [servicePrincipals](../api-reference/beta/resources/serviceprincipal.md) as members, the app will need effective permissions to read service principals through being granted one of the _Directory.\*_ permissions, otherwise Microsoft Graph will return an error. (In the case of delegated permissions, the signed-in user will also need sufficient privileges in the organization to read service principals.) The same guidance applies for the `memberOf` property, which can return [administrativeUnits](../api-reference/beta/resources/administrativeunit.md).

Group permissions are also used to control access to [Microsoft Planner](../api-reference/beta/resources/planner_overview.md) resources and APIs. Only delegated permissions are supported for Microsoft Planner APIs; application permissions are not supported. Personal Microsoft accounts are not supported.


### Example usage
#### Delegated

* _Group.Read.All_: Read all Office 365 groups that the signed-in user is a member of (`GET /me/memberOf/$/microsoft.graph.group?$filter=groupTypes/any(a:a%20eq%20'unified')`).
* _Group.Read.All_: Read all Office 365 group content like conversations (`GET /groups/{id}/conversations`).
* _Group.ReadWrite.All_: Update group properties, like photo (`PUT /groups/{id}/photo/$value`).
* _Group.ReadWrite.All_: Update group members (`POST /groups/{id}/members/$ref`). NOTE: This also requires _User.ReadBasic.All_ to read the user to add as a member.

#### Application

* _Group.Read.All_: Find all groups with name that starts with 'Sales' (`GET /groups?$filter=startswith(displayName,'Sales')`).
* _Group.ReadWrite.All_: Daemon service creates new events on an Office 365 group's calendar (`POST /groups/{id}/events`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Identity Risk Event permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _IdentityRiskEvent.Read.All_ |   Read identity risk event information  | Allows the app to read identity risk event information for all users in your organization on behalf of the signed-in user. | Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _IdentityRiskEvent.Read.All_ |   Read identity risk event information | Allows the app to read identity risk event information for all users in your organization without a signed-in user. | Yes |


### Remarks

_IdentityRiskEvent.Read.All_ is valid only for work or school accounts. For an app with delegated permissions to read identity risk information, the signed-in user must be a member of one of the following administrator roles: Global Administrator, Security Administrator, or Security Reader. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated and Application

The following usages are valid for both delegated and application permissions:

* Read all risk events generated for all users in the tenant (`GET /beta/identityRiskEvents`)
* Read malware risk events generated by the Dorknet botnet (`GET /beta/malwareRiskEvents?$filter=malwareName eq 'Dorkbot'`)
* Read most recent 50 risk events (`GET /beta/identityRiskEvents?$orderBy=riskEventDateTime desc&top=50`)
 
For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## Identity provider permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _IdentityProvider.Read.All_ |   Read identity provider information  | Allows the app to read identity providers configured in your Azure AD or Azure AD B2C tenant on behalf of the signed-in user. | Yes |
| _IdentityProvider.ReadWrite.All_ |   Read and write identity provider information  |  Allows the app to read or write identity providers configured in your Azure AD or Azure AD B2C tenant on behalf of the signed-in user. | Yes |

### Remarks

_IdentityProvider.Read.All_ and _IdentityProvider.ReadWrite.All_ are valid only for work or school accounts. For an app to read or write identity providers with delegated permissions, the signed-in user must be assigned the Global Administrator role. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated
The following usages are valid for both delegated permissions:

* _IdentityProvider.Read.All_: Read all identity providers configured in the tenant (`GET /beta/identityProviders`)
* _IdentityProvider.Read.All_: Read an existing identity provider (`GET /beta/identityProviders/{id}`)
* _IdentityProvider.ReadWrite.All_ Create an identity provider (`POST /beta/identityProviders`)
* _IdentityProvider.ReadWrite.All_ Update an existing identity provider (`PATCH /beta/identityProviders/{id}`)
* _IdentityProvider.ReadWrite.All_ Delete an existing identity provider (`DELETE /beta/identityProviders/{id}`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---
## Mail permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Mail.Read_ |    Read user mail | Allows the app to read email in user mailboxes. | No |
| _Mail.ReadWrite_ |    Read and write access to user mail | Allows the app to create, read, update, and delete email in user mailboxes. Does not include permission to send mail.| No |
| _Mail.Read.Shared_ |    Read user and shared mail | Allows the app to read mail that the user can access, including the user's own and shared mail. | No |
| _Mail.ReadWrite.Shared_ |    Read and write user and shared mail | Allows the app to create, read, update, and delete mail that the user has permission to access, including the user's own and shared mail. Does not include permission to send mail. | No |
| _Mail.Send_ |    Send mail as a user | Allows the app to send mail as users in the organization. | No |
| _Mail.Send.Shared_ |    Send mail on behalf of others | Allows the app to send mail as the signed-in user, including sending on-behalf of others. | No |
| _MailboxSettings.Read_ |  Read user mailbox settings | Allows the app to the read user's mailbox settings. Does not include permission to send mail. | No |
| _MailboxSettings.ReadWrite_ |  Read and write user mailbox settings | Allows the app to create, read, update, and delete user's mailbox settings. Does not include permission to send mail. | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Mail.Read_       |    Read mail in all mailboxes | Allows the app to read mail in all mailboxes without a signed-in user.| Yes |
| _Mail.ReadWrite_ |    Read and write mail in all mailboxes | Allows the app to create, read, update, and delete mail in all mailboxes without a signed-in user. Does not include permission to send mail. | Yes |
| _Mail.Send_ |    Send mail as any user | Allows the app to send mail as any user without a signed-in user. | Yes | 
| _MailboxSettings.Read_ |  Read all user mailbox settings | Allows the app to read user's mailbox settings without a signed-in user. Does not include permission to send mail. | No |
| _MailboxSettings.ReadWrite_ | Read and write all user mailbox settings  | Allows the app to create, read, update, and delete user's mailbox settings without a signed-in user. Does not include permission to send mail. | Yes |

### Remarks

_Mail.Read.Shared_, _Mail.ReadWrite.Shared_, and _Mail.Send.Shared_ are only valid for work or school accounts. All other permissions are valid for both Microsoft accounts and work or school accounts.

With the _Mail.Send_ or _Mail.Send.Shared_ permission, an app can send mail and save a copy to the user's Sent Items folder, even if the app does not use a corresponding _Mail.ReadWrite_ or _Mail.ReadWrite.Shared_ permission.

### Example usage

#### Delegated

* _Mail.Read_: List messages in the user's inbox, sorted by `receivedDateTime` (`GET /me/mailfolders/inbox/messages?$orderby=receivedDateTime DESC`).
* _Mail.Read.Shared_: Find all messages with attachments in a user's inbox that has shared their inbox with the signed-in user (`GET /users{id | userPrincipalName}/mailfolders/inbox/messages?$filter=hasAttachments eq true`).
* _Mail.ReadWrite_: Mark a message read (`PATCH /me/messages/{id}`).
* _Mail.Send_: Send a message (`POST /me/sendmail`).
* _MailboxSettings.ReadWrite_: Update the user's automatic reply (`PATCH /me/mailboxSettings`).

#### Application

* _Mail.Read_: Find messages from bob@contoso.com (`GET /users/{id | userPrincipalName}/messages?$filter=from/emailAddress/address eq 'bob@contoso.com'`).
* _Mail.ReadWrite_: Create a new folder in the Inbox named `Expense Reports` (`POST /users/{id | userPrincipalName}/mailfolders`).
* _Mail.Send_: Send a message (`POST /users/{id | userPrincipalName}/sendmail`).
* _MailboxSettings.Read_: Get the default timezone for the user's mailbox (`GET /users/{id | userPrincipalName}/mailboxSettings/timeZone`)


For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Member permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Member.Read.Hidden_ | Read hidden memberships | Allows the app to read the memberships of hidden groups and administrative units on behalf of the signed-in user, for those hidden groups and administrative units that the signed-in user has access to. | Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Member.Read.Hidden_ | Read all hidden memberships | Allows the app to read the memberships of hidden groups and administrative units without a signed-in user. | Yes |

### Remarks
_Member.Read.Hidden_ is valid only on work or school accounts.

Membership in some Office 365 groups can be hidden. This means that only the members of the group can view its members. This feature can be used to help comply with regulations that require an organization to hide group membership from outsiders (for example, an Office 365 group that represents students enrolled in a class).

### Example usage

#### Delegated

* _Member.Read.Hidden_: Read the members of an administrative unit with hidden membership on behalf of the signed-in user (`GET /administrativeUnits/{id}/members`).
* _Member.Read.Hidden_: Read the members of a group with hidden membership on behalf of the signed-in user (`GET /groups/{id}/members`).

#### Application

* _Member.Read.Hidden_: Read the members of an administrative unit with hidden membership (`GET /administrativeUnits/{id}/members`).
* _Member.Read.Hidden_: Read the members of a group with hidden membership (`GET /groups/{id}/members`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## Notes permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Notes.Read_ |    Read user OneNote notebooks | Allows the app to read the titles of OneNote notebooks and sections and to create new pages, notebooks, and sections on behalf of the signed-in user. | No |
| _Notes.Create_ |    Create user OneNote notebooks | Allows the app to read the titles of OneNote notebooks and sections and to create new pages, notebooks, and sections on behalf of the signed-in user.| No |
| _Notes.ReadWrite_ |    Read and write user OneNote notebooks | Allows the app to read, share, and modify OneNote notebooks on behalf of the signed-in user. | No |
| _Notes.Read.All_ |    Read all OneNote notebooks that user can access | Allows the app to read OneNote notebooks that the signed-in user has access to in the organization. | No |
| _Notes.ReadWrite.All_ |    Read and write all OneNote notebooks that user can access | Allows the app to read, share, and modify OneNote notebooks that the signed-in user has access to in the organization.| No |
| _Notes.ReadWrite.CreatedByApp_ |    Limited notebook access (deprecated) | **Deprecated** <br/>Do not use. No privileges are granted by this permission. | No |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Notes.Read.All_ |    Read all OneNote notebooks | Allows the app to read all the OneNote notebooks in your organization, without a signed-in user. | Yes |
| _Notes.ReadWrite.All_ |    Read and write all OneNote notebooks | Allows the app to read, share, and modify all the OneNote notebooks in your organization, without a signed-in user.| Yes |


### Remarks
_Notes.Read.All_ and _Notes.ReadWrite.All_ are only valid for work or school accounts. All other permissions are valid for both Microsoft accounts and work or school accounts.

With the _Notes.Create_ permission, an app can view the OneNote notebook hierarchy of the signed-in user and create OneNote content (notebooks, section groups, sections, pages, etc.).

_Notes.ReadWrite_ and _Notes.ReadWrite.All_ also allow the app to modify the permissions on the OneNote content that can be accessed by the signed-in user. 

For work or school accounts, _Notes.Read.All_ and _Notes.ReadWrite.All_ allow the app to access other users' OneNote content that the signed-in user has permission to within the organization.

### Example usage
#### Delegated

* _Notes.Create_: Create a new notebooks for the signed-in user (`POST /me/onenote/notebooks`).
* _Notes.Read_: Read the notebooks for the signed-in user (`GET /me/onenote/notebooks`).
* _Notes.Read.All_: Get all notebooks that the signed-in user has access to within the organization (`GET /me/onenote/notebooks?includesharednotebooks=true`).
* _Notes.ReadWrite_: Update the page of the signed-in user (`PATCH /me/onenote/pages/{id}/$value`).
* _Notes.ReadWrite.All_: Create a page in another user's notebook that the signed-in user has access to within the organization (`POST /users/{id}/onenote/pages`).

#### Application

* _Notes.Read.All_: Read all users notebooks in a group (`GET /groups/{id}/onenote/notebooks`).
* _Notes.ReadWrite.All_: Update the page in a notebook for any user in the organization (`PATCH /users/{id}/onenote/pages/{id}/$value`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).


## OpenID permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _email_ |    View users' email address | Allows the app to read your users' primary email address. | No |
| _offline_access_ |    Access user's data anytime | Allows the app to read and update user data, even when they are not currently using the app.| No |
| _openid_ |    Sign users in | Allows users to sign in to the app with their work or school accounts and allows the app to see basic user profile information.| No |
| _profile_ |    View users' basic profile | Allows the app to see your users' basic profile (name, picture, user name).| No |

#### Application permissions

None.

### Remarks
You can use these permissions to specify artifacts that you want returned in Azure AD authorization and token requests. They are supported differently by the Azure AD v1.0 and v2.0 endpoints.

With the Azure AD (v1.0) endpoint, only the _openid_ permission is used. You specify it in the *scope* parameter in an authorization request to return an ID token when you use the OpenID Connect protocol to sign in a user to your app. For more information, see [Authorize access to web applications using OpenID Connect and Azure Active Directory](https://docs.microsoft.com/azure/active-directory/develop/active-directory-protocols-openid-connect-code). To successfully return an ID token, you must also make sure that the _User.Read_ permission is configured when you register your app. 

With the Azure AD v2.0 endpoint, you specify the _offline\_access_ permission in the _scope_ parameter to explicitly request a refresh token when using the OAuth 2.0 or OpenID Connect protocols. With OpenID Connect, you specify the _openid_ permission to request an ID token. You can also specify the _email_ permission, _profile_ permission, or both to return additional claims in the ID token. You do not need to specify _User.Read_ to return an ID token with the v2.0 endpoint. For more information, see [OpenID Connect scopes](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-scopes#openid-connect-scopes).

> **Important** The Microsoft Authentication Library (MSAL) currently specifies _offline\_access_, _openid_, _profile_, and _email_ by default in authorization and token requests. This means that, for the default case, if you specify these permissions explicitly, Azure AD may return an error. 

---

## People permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _People.Read_ |    Read users' relevant people lists | Allows the app to read a scored list of people relevant to the signed-in user. The list can include local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype). | No |
| _People.Read.All_ | Read all users' relevant people lists | Allows the app to read a scored list of people relevant to the signed-in user or other users in the signed-in user's organization. The list can include local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype). Also allows the app to search the entire directory of the signed-in user's organization. | Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _People.Read.All_ | Read all users' relevant people lists | Allows the app to read a scored list of people relevant to the signed-in user or other users in the signed-in user's organization. <br/><br/>The list can include local contacts, contacts from social networking or your organization's directory, and people from recent communications (such as email and Skype). Also allows the app to search the entire directory of the signed-in user's organization. | Yes |

### Remarks

The People.Read.All permission is only valid for work and school accounts. 

### Example usage

#### Delegated
* _People.Read_: Read a list of relevant people (`GET /me/people`)
* _People.Read.All_: Read a list of relevant people to another user in the same organization (`GET /users('{id})/people`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Reports permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Reports.Read.All_ | Read all usage reports | Allows an app to read all service usage reports without a signed-in user. Services that provide usage reports include Office 365 and Azure Active Directory. | Yes |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Reports.Read.All_ | Read all usage reports | Allows an app to read all service usage reports without a signed-in user. Services that provide usage reports include Office 365 and Azure Active Directory. | Yes |

### Remarks
Reports permissions are only valid for work or school accounts. 

### Example usage

#### Application

* _Reports.Read.All_: Read usage detail report of email apps with period of 7 days (`GET /reports/EmailAppUsage(view='Detail',period='D7')/content`).
* _Reports.Read.All_: Read activity detail report of email with date of '2017-01-01' (`GET /reports/EmailActivity(view='Detail',data='2017-01-01')/content`).
* _Reports.Read.All_: Read Office 365 activations detail report (`GET /reports/Office365Activations(view='Detail')/content`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Security permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _SecurityEvents.Read.All_        |  Read your organization’s security events | Allows the app to read your organization’s security events on behalf of the signed-in user. | Yes  |
| _SecurityEvents.ReadWrite.All_   | Read and update your organization’s security events | Allows the app to read your organization’s security events on behalf of the signed-in user. Also allows the app to update editable properties in security events on behalf of the signed-in user. | Yes  |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _SecurityEvents.Read.All_        |  Read your organization’s security events | Allows the app to read your organization’s security events. | Yes  |
| _SecurityEvents.ReadWrite.All_   | Read and update your organization’s security events | Allows the app to read your organization’s security events. Also allows the app to update editable properties in security events. | Yes  |

### Remarks

Security permissions are valid only on work or school accounts.

### Example usage

#### Delegated and Application

- _SecurityEvents.Read.All_: Read the list of all security alerts from all licensed security providers avalible to your tenant (`GET /beta/security/alerts`)
- _SecurityEvents.ReadWrite.All_: Update or read security alerts from all licensed security providers avalible to your tenant  (`PATCH /beta/security/alerts/{id}`)

---

## Sites permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Sites.Read.All_        | Read items in all site collections | Allows the app to read documents and list items in all site collections on behalf of the signed-in user. | No  |
| _Sites.ReadWrite.All_   | Read and write items in all site collections | Allows the app to edit or delete documents and list items in all site collections on behalf of the signed-in user. | No  |
| _Sites.Manage.All_      | Create, edit, and delete items and lists in all site collections | Allows the app to manage and create lists, documents, and list items in all site collections on behalf of the signed-in user. | No |
| _Sites.FullControl.All_ | Have full control of all site collections | Allows the app to have full control to SharePoint sites in all site collections on behalf of the signed-in user.  | Yes  |

#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Sites.Read.All_        | Read items in all site collections | Allows the app to read documents and list items in all site collections without a signed in user. | Yes |
| _Sites.ReadWrite.All_   | Read and write items in all site collections | Allows the app to create, read, update, and delete documents and list items in all site collections without a signed in user. | Yes |
| _Sites.Manage.All_      | Have full control of all site collections | Allows the app to manage and create lists, documents, and list items in all site collections without a signed-in user.  | Yes  |
| _Sites.FullControl.All_ | Create, edit, and delete items and lists in all site collections | Allows the app to have full control to SharePoint sites in all site collections without a signed-in user.  | Yes  |


### Remarks

Sites permissions are valid only on work or school accounts.

### Example usage

#### Delegated

* _Sites.Read.All_: Read the lists on the SharePoint root site (`GET /v1.0/sites/root/lists`)
* _Sites.ReadWrite.All_: Create new list items in a SharePoint list (`POST /v1.0/sites/root/lists/123/items`)
* _Sites.Manage.All_: Add a new list to a SharePoint site (`POST /v1.0/sites/root/lists`)
* _Sites.FullControl.All_: Complete access to SharePoint sites and lists.

---

## Tasks permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _Tasks.Read_ | Read user tasks | Allows the app to read user tasks. | No |
| _Tasks.Read.Shared_ | Read user and shared tasks | Allows the app to read tasks a user has permissions to access, including their own and shared tasks. | No |
| _Tasks.ReadWrite_ |    Create, read, update and delete user tasks and containers | Allows the app to create, read, update and delete tasks and containers (and tasks in them) that are assigned to or shared with the signed-in user.| No |
| _Tasks.ReadWrite.Shared_ | Read and write user and shared tasks | Allows the app to create, read, update, and delete tasks a user has permissions to, including their own and shared tasks. | No |

#### Application permissions

None.

### Remarks
_Tasks_ permissions are used to control access for Outlook tasks. Access for Microsoft Planner tasks is controlled by [_Group_ permissions](#group-permissions).

_Shared_ permissions are currently only supported for work or school accounts. Even with _Shared_ permissions, reads and writes may fail if the user who owns the shared content has not granted the accessing user permissions to modify content within the folder.

### Example usage
#### Delegated

* _Tasks.Read_: Get all tasks in a user's mailbox (`GET /me/outlook/tasks`).
* _Tasks.Read.Shared_: Access tasks in a folder shared to you by another user in your organization (`Get /users{id|userPrincipalName}/outlook/taskfolders/{id}/tasks`).
* _Tasks.ReadWrite_: Add an event to the user's default task folder (`POST /me/outook/tasks`).
* _Tasks.Read_: Get all uncompleted tasks in a user's mailbox (`GET /users/{id | userPrincipalName}/outlook/tasks?$filter=status ne 'completed'`).
* _Tasks.ReadWrite_: Update a task in a user's mailbox (`PATCH /users/{id | userPrincipalName}/outlook/tasks/id`).
* _Tasks.ReadWrite.Shared_: Complete a task on behalf of another user (`POST /users/{id | userPrincipalName}/outlook/tasks/id/complete`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Terms of use permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _Agreement.Read.All_ | Read all terms of use agreements | Allows the app to read terms of use agreements on behalf of the signed-in user. | Yes |
| _Agreement.ReadWrite.All_ | Read and write all terms of use agreements | Allows the app to read and write terms of use agreements on behalf of the signed-in user. | Yes |
| _AgreementAcceptance.Read_ | Read user terms of use acceptance statuses | Allows the app to read terms of use acceptance statuses on behalf of the signed-in user. | Yes |
| _AgreementAcceptance.Read.All_ | Read terms of use acceptance statuses that user can access | Allows the app to read terms of use acceptance statuses on behalf of the signed-in user. | Yes |

### Remarks

All the permissions above are valid only for work or school accounts.

For an app to read or write all agreements or agreement acceptances with delegated permissions, the signed-in user must be assigned the Global Administrator, Conditional Access Administrator or Security Administrator role. For more information about administrator roles, see [Assigning administrator roles in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-assign-admin-roles).

### Example usage

#### Delegated
The following usages are valid for both delegated permissions:

* _Agreement.Read.All_: Read all terms of use agreements (`GET /beta/agreements`)
* _Agreement.ReadWrite.All_: Read and write all terms of use agreements (`POST /beta/agreements`)
* _AgreementAcceptance.Read_ Read user terms of use acceptance statuses (`GET /beta/me/agreementAcceptances`)

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## User permissions

#### Delegated permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _User.Read_       |    Sign-in and read user profile | Allows users to sign-in to the app, and allows the app to read the profile of signed-in users. It also allows the app to read basic company information of signed-in users.| No |
| _User.ReadWrite_ |    Read and write access to user profile | Allows the app to read your profile. It also allows the app to update your profile information on your behalf. | No |
| _User.ReadBasic.All_ |    Read all users' basic profiles | Allows the app to read a basic set of profile properties of other users in your organization on behalf of the signed-in user. This includes display name, first and last name, email address and photo. | No |
| _User.Read.All_  |     Read all users' full profiles           | Allows the app to read the full set of profile properties, reports, and managers of other users in your organization, on behalf of the signed-in user. | Yes |
| _User.ReadWrite.All_ |     Read and write all users' full profiles | Allows the app to read and write the full set of profile properties, reports, and managers of other users in your organization, on behalf of the signed-in user. Also allows the app to create and delete users as well as reset user passwords on behalf of the signed-in user. | Yes |
| _User.Invite.All_  |     Invite guest users to the organization | Allows the app to invite guest users to your organization, on behalf of the signed-in user. | Yes |
| _User.Export.All_       |    Export users' data | Allows the app to export an organizational user's data, when performed by a Company Administrator.| Yes |


#### Application permissions

|   Permission    |  Display String   |  Description | Admin Consent Required |
|:----------------|:------------------|:-------------|:-----------------------|
| _User.Read.All_ |    Read all users' full profiles | Allows the app to read the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.| Yes |
| _User.ReadWrite.All_ |   Read and write all users' full profiles | Allows the app to read and write the full set of profile properties, group membership, reports and managers of other users in your organization, without a signed-in user.  Also allows the app to create and delete non-administrative users. Does not allow reset of user passwords. | Yes |
| _User.Invite.All_  |     Invite guest users to the organization | Allows the app to invite guest users to your organization, without a signed-in user. | Yes |
| _User.Export.All_       |    Export users' data | Allows the app to export organizational users' data, without a signed-in user.| Yes |

### Remarks

The only permissions valid for Microsoft accounts are _User.Read_ and _User.ReadWrite_. For work or school accounts, all permissions are valid.

With the _User.Read_ permission, an app can also read the basic company information of the signed-in user for a work or school account through the [organization](../api-reference/v1.0/resources/organization.md) resource. The following properties are available: id, displayName, and verifiedDomains.

For work or school accounts, the full profile includes all of the declared properties of the [User](../api-reference/v1.0/resources/user.md) resource. On reads, only a limited number of properties are returned by default. To read properties that are not in the default set, use `$select`. The default properties are:

- displayName
- givenName
- jobTitle
- mail
- mobilePhone
- officeLocation
- preferredLanguage
- surname
- userPrincipalName

 _User.ReadWrite_ and _User.Readwrite.All_ delegated permissions allow the app to update the following profile properties for work or school accounts:

- aboutMe
- birthday
- hireDate
- interests
- mobilePhone
- mySite
- pastProjects
- photo
- preferredName
- responsibilities
- schools
- skills

With the _User.ReadWrite.All_ application permission, the app can update all of the declared properties of work or school accounts except for password.

To read or write direct reports (`directReports`) or the manager (`manager`) of a work or school account, the app must have either _User.Read.All_ (read only) or _User.ReadWrite.All_.

The _User.ReadBasic.All_ permission constrains app access to a limited set of properties known as the basic profile. This is because the full profile might contain sensitive directory information. The basic profile includes only the following properties: 

- displayName
- givenName
- mail
- photo
- surname
- userPrincipalName

To read the group memberships of a user (`memberOf`), the app must have either [_Group.Read.All_](#group-permissions) or [_Group.ReadWrite.All_](#group-permissions). However, if the user also has membership in a [directoryRole](../api-reference/v1.0/resources/directoryrole.md) or an [administrativeUnit](../api-reference/beta/resources/administrativeunit.md), the app will need effective permissions to read those resources too, or Microsoft Graph will return an error. This means the app will also need [Directory permissions](#directory-permissions), and, for delegated permissions, the signed-in user will also need sufficient privileges in the organization to access directory roles and administrative units. 

### Example usage

#### Delegated

* _User.Read_: Read the full profile for the signed-in user (`GET /me`).
* _User.ReadWrite_: Update the photo of the signed-in user (`PUT /me/photo/$value`).
* _User.ReadBasic.All_: Find all users whose name starts with "David" (`GET /users?$filter=startswith(displayName,'David')`).
* _User.Read.All_: Read a user's manager (`GET /user/{id | userPrincipalName}/manager`).


#### Application

* _User.Read.All_: Read all users and relationships through delta query (`GET /beta/users/delta?$select=displayName,givenName,surname`).
* _User.ReadWrite.All_: Update the photo for any user in the organization (`PUT /user/{id | userPrincipalName}/photo/$value`).

For more complex scenarios involving multiple permissions, see [Permission scenarios](#permission-scenarios).

---

## Permission scenarios

This section shows some common scenarios that target [user](../api-reference/v1.0/resources/user.md) and [group](../api-reference/v1.0/resources/group.md) resources in an organization. The tables show the permissions that an app needs to be able to perform specific operations required by the scenario. Note that in some cases the ability of the app to perform specific operations will depend on whether a permission is an application or delegated permission. In the case of delegated permissions, the app's effective permissions will also depend on the privileges of the signed-in user within the organization. For more information, see  [Delegated permissions, Application permissions, and effective permissions](#delegated-permissions-application-permissions-and-effective-permissions).

### Access scenarios on the User resource

| **App tasks involving User**	 |  **Required permissions** | **Permission strings** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read other users' basic information (only display name and picture), for example to show in a people picking experience	 | _User.ReadBasic.All_  |  Read all user's basic profiles |
| App wants to read complete user profile for signed in user (see direct reports, and manager, etc.)	 | _User.Read_ | Enable sign-in and read user profile|
| App wants to read complete user profile all users	 | _User.Read.All_ |  Read all user's full profiles   |
| App wants to read files, mail and calendar information for the signed in user	 | _User.Read_, _Files.Read_, _Mail.Read_, _Calendars.Read_ | Enable sign-in and read user profile, Read users' files,  Read user mail,  Read user calendars |
| App wants to read the signed-in user's (my) files and files that other users have shared with the signed-in user (me). | _User.Read_, _Files.Read_, _Sites.Read.All_ | Enable sign-in and read user profile, Read users' files,  Read items in all site collections |
| App wants to read and write complete user profile for signed in user	 | _User.ReadWrite_ | Read and write access to user profile |
| App wants to read and write complete user profile all users	 | _User.ReadWrite.All_ | Read and write all user's full profiles |
| App wants to read and write files, mail and calendar information for the signed in user	 | _User.ReadWrite_, _Files.ReadWrite_, _Mail.ReadWrite_, _Calendars.ReadWrite_  |  Read and write access to user profile,  Read and write access to user profile,  Read and write access to user mail, Have full access to user calendars |
| App wants to submit a data policy operation request to export a user's personal data | _User.Export.All_ | Export a user'a personal data. |
   

### Access scenarios on the Group resource
    
| **App tasks involving Group**	 |  **Required permissions** |  **Permission strings** |
|:-------------------------------|:---------------------|:---------------|
| App wants to read basic group info (only display name and picture), for example to show in a group picking experience	 | _Group.Read.All_  | Read all groups|
| App wants to read all content in all Office 365 groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  |  _Group.Read.All_ | Read items in all site collections, Read all groups|
| App wants to read and write all content in all Office 365 groups, including files, conversations.  It also needs to show group memberships, be able to update group memberships, (if owner).  | 	_Group.ReadWrite.All_, _Sites.ReadWrite.All_ |  Read and write all groups, Edit or delete items in all site collections |
| App wants to discover (find) an Office 365 group. It allows the user to search for a particular group and choose one from the enumerated list to allow the user to join the group.	 | _Group.ReadWrite.All_ | Read and write all groups|
| App wants to create a group through AAD Graph | 	_Group.ReadWrite.All_ | Read and write all groups|

## User Activity permissions

#### Delegated permissions

|Permission    |Display String   |Description |Admin Consent Required |
|:-----------------------------|:-----------------------------------------|:-----------------|:-----------------|
| _UserActivity.ReadWrite.CreatedByApp_ |Read and write app activity to users' activity feed |Allows the app to read and report the signed-in user's activity in the app. |No |

#### Delegated permissions
None.

### Remarks
*UserActivity.ReadWrite.CreatedByApp* is valid for both Microsoft accounts and work or school accounts. 
 
The *CreatedByApp* constraint associated with this permission indicates the service will apply implicit filtering to results based on the identity of the calling app, either the MSA app id or a set of app ids configured for a cross-platform application identity. 

### Example usage

#### Delegated
* _UserActivity.ReadWrite.CreatedByApp_: Get a list of recent unique user activities based on associated history items published in the last day. (GET /me/activities/recent).
* _UserActivity.ReadWrite.CreatedByApp_: Publish or update a user activity which may be resumed by the user of the application. (PUT /me/activities/%2Farticle%3F12345).
*	_UserActivity.ReadWrite.CreatedByApp_: Publish or update a history item for a specified user activity in order to represent the period of user engagement. (PUT /me/activities/{id}/historyItems/{id}).
*	_UserActivity.ReadWrite.CreatedByApp_: Delete a user activity in response to user initiated request or to remove invalid data. (DELETE /me/activities/{id}).
*	_UserActivity.ReadWrite.CreatedByApp_: Delete a history item in response to user initiated request or to remove invalid data. (DELETE /me/activities/{id}/historyItems/{id}).

<br/>
