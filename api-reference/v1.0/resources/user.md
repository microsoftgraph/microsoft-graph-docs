---
title: "user resource type"
description: "Represents an Azure AD user account. Inherits from directoryObject."
author: "krbain"
localization_priority: Priority
ms.prod: "users"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

Represents an Azure AD user account. Inherits from [directoryObject](directoryobject.md).

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/user-delta.md) function.

## Methods

| Method                                                                                     | Return Type                                                                      | Description                                                                                                                                                                                                                         |
|:-------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [List users](../api/user-list.md)                                                          | [user](user.md) collection                                                       | Get a list of user objects.                                                                                                                                                                                                         |
| [Create user](../api/user-post-users.md)                                                   | [user](user.md)                                                                  | Create a new user object.                                                                                                                                                                                                           |
| [Get user](../api/user-get.md)                                                             | [user](user.md)                                                                  | Read properties and relationships of user object.                                                                                                                                                                                   |
| [Update user](../api/user-update.md)                                                       | [user](user.md)                                                                  | Update user object.                                                                                                                                                                                                                 |
| [Delete user](../api/user-delete.md)                                                       | None                                                                             | Delete user object.                                                                                                                                                                                                                 |
| [Get delta](../api/user-delta.md)                                                          | [user](user.md) collection                                                       | Get incremental changes for users.                                                                                                                                                                                                  |
| **App role assignments**                                                                   |                                                                                  |                                                                                                                                                                                                                                     |
| [List appRoleAssignments](../api/user-list-approleassignments.md)                          | [appRoleAssignment](approleassignment.md) collection                             | Get the apps and app roles which this user has been assigned.                                                                                                                                                                       |
| [Add appRoleAssignment](../api/user-post-approleassignments.md)                            | [appRoleAssignment](approleassignment.md)                                        | Assign an app role to this user.                                                                                                                                                                                                    |
| [Remove appRoleAssignment](../api/user-delete-approleassignments.md)                       | None                                                                             | Remove an app role assignment from this user.                                                                                                                                                                                       |
| **Calendar**                                                                               |                                                                                  |                                                                                                                                                                                                                                     |
| [Create calendar](../api/user-post-calendars.md)                                           | [Calendar](calendar.md)                                                          | Create a new Calendar by posting to the calendars collection.                                                                                                                                                                       |
| [Create calendarGroup](../api/user-post-calendargroups.md)                                 | [CalendarGroup](calendargroup.md)                                                | Create a new CalendarGroup by posting to the calendarGroups collection.                                                                                                                                                             |
| [Create event](../api/user-post-events.md)                                                 | [event](event.md)                                                                | Create a new event by posting to the events collection.                                                                                                                                                                             |
| [findMeetingTimes](../api/user-findmeetingtimes.md)                                        | [meetingTimeSuggestionsResult](meetingtimesuggestionsresult.md)                  | Find time and locations to meet based on attendee availability, location, or time constraints.                                                                                                                                      |
| [getSchedule](../api/calendar-getschedule.md)                                              | [scheduleInformation](scheduleinformation.md)                                    | Get the free/busy availability information for a collection of users, distributions lists, or resources (rooms or equipment) for a specified time period.                                                                           |
| [List calendars](../api/user-list-calendars.md)                                            | [calendar](calendar.md) collection                                               | Get a Calendar object collection.                                                                                                                                                                                                   |
| [List calendarGroups](../api/user-list-calendargroups.md)                                  | [calendarGroup](calendargroup.md) collection                                     | Get a CalendarGroup object collection.                                                                                                                                                                                              |
| [List calendarView](../api/user-list-calendarview.md)                                      | [event](event.md) collection                                                     | Get a Event object collection.                                                                                                                                                                                                      |
| [List events](../api/user-list-events.md)                                                  | [event](event.md) collection                                                     | Get a list of event objects in the user's mailbox. The list contains single instance meetings and series masters.                                                                                                                   |
| [reminderView](../api/user-reminderview.md)                                                | [Reminder](reminder.md) collection                                               | Return a list of calendar reminders within the start and end times specified.                                                                                                                                                       |
| **Contacts**                                                                               |                                                                                  |                                                                                                                                                                                                                                     |
| [Create contact](../api/user-post-contacts.md)                                             | [contact](contact.md)                                                            | Create a new Contact by posting to the contacts collection.                                                                                                                                                                         |
| [Create contactFolder](../api/user-post-contactfolders.md)                                 | [contactFolder](contactfolder.md)                                                | Create a new ContactFolder by posting to the contactFolders collection.                                                                                                                                                             |
| [List contacts](../api/user-list-contacts.md)                                              | [contact](contact.md) collection                                                 | Get a contact collection from the default Contacts folder of the signed-in user.                                                                                                                                                    |
| [List contactFolders](../api/user-list-contactfolders.md)                                  | [contactFolder](contactfolder.md) collection                                     | Get the contact folder collection in the default Contacts folder of the signed-in user.                                                                                                                                             |
| **Directory objects**                                                                      |                                                                                  |                                                                                                                                                                                                                                     |
| [assignLicense](../api/user-assignlicense.md)                                              | [user](user.md)                                                                  | Add or remove subscriptions for the user. You can also enable and disable specific plans associated with a subscription.                                                                                                            |
| [checkMemberGroups](../api/user-checkmembergroups.md)                                      | String collection                                                                | Check for membership in a list of groups. The check is transitive.                                                                                                                                                                  |
| [checkMemberObjects](../api/user-checkmemberobjects.md)                                    | String collection                                                                | Check for membership in a list of group, directory role, or administrative unit objects. The function is transitive.                                                                                                                |
| [exportPersonalData](../api/user-exportpersonaldata.md)                                    | None                                                                             | Submits a data policy operation request, made by a company administrator to export an organizational user's data.                                                                                                                   |
| [getByIds](../api/directoryobject-getbyids.md)                                             | String collection                                                                | Returns the directory objects specified in a list of ids.                                                                                                                                                                           |
| [getMemberGroups](../api/user-getmembergroups.md)                                          | String collection                                                                | Return all the groups that the user is a member of. The check is transitive.                                                                                                                                                        |
| [getMemberObjects](../api/user-getmemberobjects.md)                                        | String collection                                                                | Return all of the groups and directory roles that the user is a member of. The check is transitive.                                                                                                                                 |
| [List createdObjects](../api/user-list-createdobjects.md)                                  | [directoryObject](directoryobject.md) collection                                 | Get the directory objects created by the user from the createdObjects navigation property.                                                                                                                                          |
| [List licenseDetails](../api/user-list-licensedetails.md)                                  | [licenseDetails](licensedetails.md) collection                                   | Get a licenseDetails object collection.                                                                                                                                                                                             |
| [List ownedDevices](../api/user-list-owneddevices.md)                                      | [directoryObject](directoryobject.md) collection                                 | Get the devices that are owned by the user from the ownedDevices navigation property.                                                                                                                                               |
| [List ownedObjects](../api/user-list-ownedobjects.md)                                      | [directoryObject](directoryobject.md) collection                                 | Get the directory objects that are owned by the user from the ownedObjects navigation property.                                                                                                                                     |
| [List registeredDevices](../api/user-list-registereddevices.md)                            | [directoryObject](directoryobject.md) collection                                 | Get the devices that are retistered for the user from the registeredDevices navigation property.                                                                                                                                    |
| [reprocessLicense](../api/user-reprocesslicenseassignment.md)                              | [user](user.md)                                                                  | Reprocess subscription assignments for the user.                                                                                                                                                                                    |
| [revokeSignInSessions](../api/user-revokesigninsessions.md)                                | None                                                                             | Revokes all the user's refresh and session tokens issued to applications, by resetting the **signInSessionsValidFromDateTime** user property to the current date-time. This forces the user to sign in to those applications again. |
| **Drive**                                                                                  |                                                                                  |                                                                                                                                                                                                                                     |
| [Get drive](../api/drive-get.md)                                                           | [drive](drive.md)                                                                | Retrieve the properties and relationships of a Drive resource.                                                                                                                                                                      |
| [List children](../api/driveitem-list-children.md)                                         | [DriveItems](driveitem.md)                                                       | Return a collection of DriveItems in the children relationship of a DriveItem.                                                                                                                                                      |
| **Groups**                                                                                 |                                                                                  |                                                                                                                                                                                                                                     |
| [List joinedTeams](../api/user-list-joinedteams.md)                                        | [team](team.md) collection                                                       | Get the Microsoft Teams teams that the user is a direct member of from the joinedTeams navigation property.                                                                                                                         |
| [List memberOf](../api/user-list-memberof.md)                                              | [directoryObject](directoryobject.md) collection                                 | Get the groups and directory roles that the user is a direct member of from the memberOf navigation property.                                                                                                                       |
| [List transitive memberOf](../api/user-list-transitivememberof.md)                         | [directoryObject](directoryobject.md) collection                                 | List the groups and directory roles that the user is a member of. This operation is transitive and includes the groups that the user is a nested member of.                                                                         |
| **Mail**                                                                                   |                                                                                  |                                                                                                                                                                                                                                     |
| [Create inferenceClassificationOverride](../api/inferenceclassification-post-overrides.md) | Create a Focused Inbox override for a sender identified by an SMTP address.      |                                                                                                                                                                                                                                     |
| [Create mailFolder](../api/user-post-mailfolders.md)                                       | [mailFolder](mailfolder.md)                                                      | Create a new MailFolder by posting to the mailFolders collection.                                                                                                                                                                   |
| [Create message](../api/user-post-messages.md)                                             | [message](message.md)                                                            | Create a new Message by posting to the messages collection.                                                                                                                                                                         |
| [Create messageRule](../api/mailfolder-post-messagerules.md)                               | [messageRule](messagerule.md)                                                    | Create a messageRule object by specifying a set of conditions and actions.                                                                                                                                                          |
| [getMailTips](../api/user-getmailtips.md)                                                  | [mailTips](mailtips.md) collection                                               | Return the MailTips of one or more recipients as available to the signed-in user.                                                                                                                                                   |
| [List mailFolders](../api/user-list-mailfolders.md)                                        | [mailFolder](mailfolder.md) collection                                           | Get the mail folder collection under the root folder of the signed-in user.                                                                                                                                                         |
| [List messages](../api/user-list-messages.md)                                              | [message](message.md) collection                                                 | Get all the messages in the signed-in user's mailbox.                                                                                                                                                                               |
| [List overrides](../api/inferenceclassification-list-overrides.md)                         | [inferenceClassificationOverride](inferenceclassificationoverride.md) collection | Get the Focused Inbox overrides that a user has set up to always classify messages from certain senders in specific ways.                                                                                                           |
| [List rules](../api/mailfolder-list-messagerules.md)                                       | [messageRule](messagerule.md) collection                                         | Get all the messageRule objects defined for the user's inbox.                                                                                                                                                                       |
| [Send mail](../api/user-sendmail.md)                                                       | None                                                                             | Send the message specified in the request body.                                                                                                                                                                                     |
| **Notes**                                                                                  |                                                                                  |                                                                                                                                                                                                                                     |
| [Create notebook](../api/onenote-post-notebooks.md)                                        | [notebook](notebook.md)                                                          | Create a new OneNote notebook.                                                                                                                                                                                                      |
| [List notebooks](../api/onenote-list-notebooks.md)                                         | [notebook](notebook.md) collection                                               | Retrieve a list of notebook objects.                                                                                                                                                                                                |
| **Open extensions**                                                                        |                                                                                  |                                                                                                                                                                                                                                     |
| [Create open extension](../api/opentypeextension-post-opentypeextension.md)                | [openTypeExtension](opentypeextension.md)                                        | Create an open extension and add custom properties to a new or existing resource.                                                                                                                                                   |
| [Get open extension](../api/opentypeextension-get.md)                                      | [openTypeExtension](opentypeextension.md) collection                             | Get an open extension identified by the extension name.                                                                                                                                                                             |
| **Org hierarchy**                                                                          |                                                                                  |                                                                                                                                                                                                                                     |
| [Assign manager](../api/user-post-manager.md)                                              | [directoryObject](directoryobject.md)                                            | Assign a user or an organizational contact as this user's manager.                                                                                                                                                                  |
| [Get manager](../api/user-list-manager.md)                                                 | [directoryObject](directoryobject.md)                                            | Get the user or organizational contact that is this user's manager from the manager navigation property.                                                                                                                            |
| [List directReports](../api/user-list-directreports.md)                                    | [directoryObject](directoryobject.md) collection                                 | Get the users and contacts that report to the user from the directReports navigation property.                                                                                                                                      |
| **Outlook settings**                                                                       |                                                                                  |                                                                                                                                                                                                                                     |
| [Create Outlook category](../api/outlookuser-post-mastercategories.md)                     | [outlookCategory](outlookcategory.md)                                            | Create an outlookCategory object in the user's master list of categories.                                                                                                                                                           |
| [Get supportedLanguages](../api/outlookuser-supportedlanguages.md)                         | [localeInfo](localeinfo.md) collection                                           | Get the list of locales and languages that are supported for the user, as configured on the user's mailbox server.                                                                                                                  |
| [Get supportedTimeZones](../api/outlookuser-supportedtimezones.md)                         | [timeZoneInformation](timezoneinformation.md collection)                         | Get the list of time zones that are supported for the user, as configured on the user's mailbox server.                                                                                                                             |
| [Get user mailbox settings](../api/user-get-mailboxsettings.md)                            | [mailboxSettings](mailboxsettings.md)                                            | Get the user's mailboxSettings.                                                                                                                                                                                                     |
| [List Outlook categories](../api/outlookuser-list-mastercategories.md)                     | [outlookCategory](outlookcategory.md) collection                                 | Get all the categories that have been defined for the user.                                                                                                                                                                         |
| [Translate Exchange Ids](../api/user-translateexchangeids.md)                              | [convertIdResult](convertidresult.md) collection                                 | Translate identifiers of Outlook-related resources between formats.                                                                                                                                                                 |
| [Update user mailbox settings](../api/user-update-mailboxsettings.md)                      | [mailboxSettings](mailboxsettings.md)                                            | Enable, configure, or disable one or more user's mailboxSettings.                                                                                                                                                                   |
| **Photo**                                                                                  |                                                                                  |                                                                                                                                                                                                                                     |
| [Get photo](../api/profilephoto-get.md)                                                    | [profilePhoto](profilephoto.md)                                                  | Get the specified profilePhoto or its metadata (profilePhoto properties).                                                                                                                                                           |
| [Update profilephoto](../api/profilephoto-update.md)                                       | None                                                                             | Update the photo for any user in the tenant including the signed-in user, or the specified group or contact.                                                                                                                        |
| **Planner**                                                                                |                                                                                  |                                                                                                                                                                                                                                     |
| [List tasks](../api/planneruser-list-tasks.md)                                             | [plannerTask](plannertask.md) collection                                         | Get plannerTasks assigned to the user.                                                                                                                                                                                              |
| **Schema extensions**                                                                      |                                                                                  |                                                                                                                                                                                                                                     |
| [Add schema extension values](/graph/extensibility-schema-groups)                          | None                                                                             | Create a schema extension definition and then use it to add custom typed data to a resource.                                                                                                                                        |
| **User settings**                                                                          |                                                                                  |                                                                                                                                                                                                                                     |
| [Get settings](../api/usersettings-get.md)                                                 | [userSettings](usersettings.md)                                                  | Read the user and organization settings object.                                                                                                                                                                                     |
| [Update settings](../api/usersettings-update.md)                                           | [userSettings](usersettings.md)                                                  | Update the properties of the settings object.                                                                                                                                                                                       |

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
|aboutMe|String|A freeform text entry field for the user to describe themselves.|
|accountEnabled|Boolean| **true** if the account is enabled; otherwise, **false**. This property is required when a user is created. Supports $filter.    |
|ageGroup|String|Sets the age group of the user. Allowed values: `null`, `minor`, `notAdult` and `adult`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information. |
|assignedLicenses|[assignedLicense](assignedlicense.md) collection|The licenses that are assigned to the user. Not nullable.            |
|assignedPlans|[assignedPlan](assignedplan.md) collection|The plans that are assigned to the user. Read-only. Not nullable. |
|birthday|DateTimeOffset|The birthday of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|businessPhones|String collection|The telephone numbers for the user. NOTE: Although this is a string collection, only one number can be set for this property.|
|city|String|The city in which the user is located. Supports $filter.|
|companyName | String | The company name which the user is associated. This property can be useful for describing the company that an external user comes from. |
|consentProvidedForMinor|String|Sets whether consent has been obtained for minors. Allowed values: `null`, `granted`, `denied` and `notRequired`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information.|
|country|String|The country/region in which the user is located; for example, “US” or “UK”. Supports $filter.|
|createdDateTime | DateTimeOffset |The created date of the user object. |
|creationType|String|Indicates whether the user account was created as a regular school or work account (`null`), an external account (`Invitation`), a local account for an Azure Active Directory B2C tenant (`LocalAccount`) or self-service sign-up using email verification (`EmailVerified`). Read-only.|
|deletedDateTime| DateTimeOffset | The date and time the user was deleted. <br><br>Returned only on $select. |
|department|String|The name for the department in which the user works. Supports $filter.|
|displayName|String|The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial and last name. This property is required when a user is created and it cannot be cleared during updates. Supports $filter and $orderby.|
|employeeId|String|The employee identifier assigned to the user by the organization. Supports $filter.|
|externalUserState|String|For an external user invited to the tenant using the [invitation API](../api/invitation-post.md), this property represents the invited user's invitation status. For invited users, the state can be `PendingAcceptance` or `Accepted`, or `null` for all other users. <br><br>Returned only on `$select`. Supports `$filter` with the supported values. For example: `$filter=externalUserState eq 'PendingAcceptance'`.|
|externalUserStateChangeDateTime|DateTimeOffset|Shows the timestamp for the latest change to the **externalUserState** property. <br><br>Returned only on `$select`.|
|faxNumber|String|The fax number of the user.|
|givenName|String|The given name (first name) of the user. Supports $filter.|
|hireDate|DateTimeOffset|The hire date of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String|The unique identifier for the user. Should be treated as an opaque identifier. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|
|identities|[objectIdentity](objectIdentity.md) collection| Represents the identities that can be used to sign in to this user account. An identity can be provided by Microsoft (also known as a local account), by organizations, or by social identity providers such as Facebook, Google, and Microsoft, and tied to a user account. May contain multiple items with the same **signInType** value. <br>Supports $filter.|
|imAddresses|String collection|The instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user. Read-only.|
|interests|String collection|A list for the user to describe their interests.|
|isResourceAccount|Boolean| Do not use – reserved for future use.|
|jobTitle|String|The user’s job title. Supports $filter.|
|lastPasswordChangeDateTime| DateTimeOffset | The time when this Azure AD user last changed their password. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'|
|legalAgeGroupClassification|String| Used by enterprise applications to determine the legal age group of the user. This property is read-only and calculated based on `ageGroup` and `consentProvidedForMinor` properties. Allowed values: `null`, `minorWithOutParentalConsent`, `minorWithParentalConsent`, `minorNoParentalConsentRequired`, `notAdult` and `adult`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information.)|
|licenseAssignmentStates|[licenseAssignmentState](licenseassignmentstate.md) collection|State of license assignments for this user. Read-only.|
|mail|String|The SMTP address for the user, for example, "jeff@contoso.onmicrosoft.com". Read-Only. Supports $filter.|
|mailboxSettings|[mailboxSettings](mailboxsettings.md)|Settings for the primary mailbox of the signed-in user. You can [get](../api/user-get-mailboxsettings.md) or [update](../api/user-update-mailboxsettings.md) settings for sending automatic replies to incoming messages, locale and time zone.|
|mailNickname|String|The mail alias for the user. This property must be specified when a user is created. Supports $filter.|
|mobilePhone|String|The primary cellular telephone number for the user.|
|mySite|String|The URL for the user's personal site.|
|officeLocation|String|The office location in the user's place of business.|
|onPremisesDistinguishedName|String| Contains the on-premises Active Directory `distinguished name` or `DN`. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |
|onPremisesDomainName|String| Contains the on-premises `domainFQDN`, also called dnsDomainName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |
|onPremisesExtensionAttributes|[onPremisesExtensionAttributes](onpremisesextensionattributes.md)|Contains extensionAttributes 1-15 for the user. Note that the individual extension attributes are neither selectable nor filterable. For an `onPremisesSyncEnabled` user, the source of authority for this set of properties is the on-premises and is read-only. For a cloud-only user (where `onPremisesSyncEnabled` is false), these properties may be set during creation or update. These extension attributes are also known as Exchange custom attributes 1-15. |
|onPremisesImmutableId|String|This property is used to associate an on-premises Active Directory user account to their Azure AD user object. This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user’s **userPrincipalName** (UPN) property. **Important:** The **$** and **\_** characters cannot be used when specifying this property. Supports $filter.                            |
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory; for example: "2013-02-16T03:04:54Z". The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](onpremisesprovisioningerror.md) collection| Errors when using Microsoft synchronization product during provisioning. |
|onPremisesSamAccountName|String| Contains the on-premises `samAccountName` synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the user that was synchronized from on-premises to the cloud. Read-only.|
|onPremisesSyncEnabled|Boolean| **true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). Read-only |
|onPremisesUserPrincipalName|String| Contains the on-premises `userPrincipalName` synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |
|otherMails|String| A list of additional email addresses for the user; for example: `["bob@contoso.com", "Robert@fabrikam.com"]`. Supports $filter.|
|passwordPolicies|String|Specifies password policies for the user. This value is an enumeration with one possible value being “DisableStrongPassword”, which allows weaker passwords than the default policy to be specified. “DisablePasswordExpiration” can also be specified. The two may be specified together; for example: "DisablePasswordExpiration, DisableStrongPassword".|
|passwordProfile|[passwordProfile](passwordprofile.md)|Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required.|
|pastProjects|String collection|A list for the user to enumerate their past projects.|
|postalCode|String|The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.|
|preferredDataLocation|String|The preferred data location for the user. For more information, see [OneDrive Online Multi-Geo](https://docs.microsoft.com/sharepoint/dev/solution-guidance/multigeo-introduction).|
|preferredLanguage|String|The preferred language for the user. Should follow ISO 639-1 Code; for example "en-US".|
|preferredName|String|The preferred name for the user.|
|provisionedPlans|[provisionedPlan](provisionedplan.md) collection|The plans that are provisioned for the user. Read-only. Not nullable. |
|proxyAddresses|String collection|For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]` The **any** operator is required for filter expressions on multi-valued properties. Read-only, Not nullable. Supports $filter.|
|refreshTokensValidFromDateTime|DateTimeOffset|Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications will get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph).  If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint. <br><br>Returned only on $select. Read-only. |
|responsibilities|String collection|A list for the user to enumerate their responsibilities.|
|schools|String collection|A list for the user to enumerate the schools they have attended.|
|showInAddressList|Boolean|**true** if the Outlook global address list should contain this user, otherwise **false**. If not set, this will be treated as **true**. For users invited through the invitation manager, this property will be set to **false**.|
|skills|String collection|A list for the user to enumerate their skills.|
|signInSessionsValidFromDateTime|DateTimeOffset| Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications will get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph).  If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint. Read-only. Use [revokeSignInSessions](../api/user-revokesigninsessions.md) to reset.|
|state|String|The state or province in the user's address. Supports $filter.|
|streetAddress|String|The street address of the user's place of business.|
|surname|String|The user's surname (family name or last name). Supports $filter.|
|usageLocation|String|A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.  Examples include: "US", "JP", and "GB". Not nullable. Supports $filter.|
|userPrincipalName|String|The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](organization.md). Supports $filter and $orderby.
|userType|String|A string value that can be used to classify user types in your directory, such as “Member” and “Guest”. Supports $filter.          |

### Legal age group property definitions

This section explains how the three age group properties (`legalAgeGroupClassification`, `ageGroup` and `consentProvidedForMinor`) are used by Azure AD administrators and enterprise application developers to meet age-related regulations.

For example: Cameron is administrator of a directory for an elementary school in Holyport in the United Kingdom. At the beginning of the school year he uses the admissions paperwork to obtain consent from the minor's parents based on the age-related regulations of the United Kingdom. The consent obtained from the parent allows the minor's account to be used by Holyport school and Microsoft apps. Cameron then creates all the accounts and sets ageGroup to "minor" and consentProvidedForMinor to "granted". Applications used by his students are then able to suppress features that are not suitable for minors.

#### Legal age group classification

This read-only property is used by enterprise application developers to ensure the correct handling of a user based on their legal age group. It is calculated based on the user's `ageGroup` and `consentProvidedForMinor` properties.

| Value    | #  |Description|
|:---------------|:--------|:----------|
|null|0|Default value, no `ageGroup` has been set for the user.|
|minorWithoutParentalConsent |1|(Reserved for future use)|
|minorWithParentalConsent|2| The user is considered a minor based on the age-related regulations of their country or region and the administrator of the account has obtained appropriate consent from a parent or guardian.|
|adult|3|The user considered an adult based on the age-related regulations of their country or region.|
|notAdult|4|The user is from a country or region that has additional age-related regulations (such as the United States, United Kingdom, European Union or South Korea), and the user's age is between a minor and an adult age (as stipulated based on country or region). Generally, this means that teenagers are considered as `notAdult` in regulated countries.|
|minorNoParentalConsentRequired|5|The user is a minor but is from a country or region that has no age-related regulations.|

#### Age group and minor consent

The age group and minor consent properties are optional properties used by Azure AD administrators to help ensure the use of an account is handled correctly based on the age-related regulatory rules governing the user's country or region.

#### ageGroup property

| Value    | #  |Description|
|:---------------|:--------|:----------|
|null|0|Default value, no `ageGroup` has been set for the user.|
|minor|1|The user is considered a minor.|
|notAdult|2|The user is from a country that has statutory regulations  United States, United Kingdom, European Union or South Korea) and user’s age is more than the upper limit of kid age (as per country) and less than lower limit of adult age (as stipulated based on country or region). So basically, teenagers are considered as `notAdult` in regulated countries.|
|adult|3|The user should be a treated as an adult.|

#### consentProvidedForMinor property

| Value    | #  |Description|
|:---------------|:--------|:----------|
|null|0|Default value, no `consentProvidedForMinor` has been set for the user.|
|granted|1|Consent has been obtained for the user to have an account.|
|denied|2|Consent has not been obtained for the user to have an account.|
|notRequired|3|The user is from a location that does not require consent.|

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|activities|[userActivity](projectrome-activity.md) collection|The user's activities across devices. Read-only. Nullable.|
|calendar|[calendar](calendar.md)|The user's primary calendar. Read-only.|
|calendarGroups|[calendarGroup](calendargroup.md) collection|The user's calendar groups. Read-only. Nullable.|
|calendarView|[event](event.md) collection|The calendar view for the calendar. Read-only. Nullable.|
|calendars|[calendar](calendar.md) collection|The user's calendars. Read-only. Nullable.|
|contactFolders|[contactFolder](contactfolder.md) collection|The user's contacts folders. Read-only. Nullable.|
|contacts|[contact](contact.md) collection|The user's contacts. Read-only. Nullable.|
|createdObjects|[directoryObject](directoryobject.md) collection|Directory objects that were created by the user. Read-only. Nullable.|
|directReports|[directoryObject](directoryobject.md) collection|The users and contacts that report to the user. (The users and contacts that have their manager property set to this user.) Read-only. Nullable. |
|drive|[drive](drive.md)|The user's OneDrive. Read-only.|
|drives|[drive](drive.md) collection| A collection of drives available for this user. Read-only. |
|events|[event](event.md) collection|The user's events. Default is to show Events under the Default Calendar. Read-only. Nullable.|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the user. Read-only. Nullable.|
|inferenceClassification | [inferenceClassification](inferenceclassification.md) | Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance. |
|insights|[officeGraphInsights](officegraphinsights.md) | Read-only. Nullable.|
|licenseDetails|[licenseDetails](licensedetails.md) collection|A collection of this user's license details. Read-only.|
|mailFolders|[mailFolder](mailfolder.md) collection| The user's mail folders. Read-only. Nullable.|
|manager|[directoryObject](directoryobject.md)|The user or contact that is this user’s manager. Read-only. (HTTP Methods: GET, PUT, DELETE.)|
|memberOf|[directoryObject](directoryobject.md) collection|The groups and directory roles that the user is a member of. Read-only. Nullable.|
|messages|[message](message.md) collection|The messages in a mailbox or folder. Read-only. Nullable.|
|onenote|[onenote](onenote.md)| Read-only.|
|outlook|[outlookUser](outlookuser.md)| Read-only.|
|ownedDevices|[directoryObject](directoryobject.md) collection|Devices that are owned by the user. Read-only. Nullable.|
|ownedObjects|[directoryObject](directoryobject.md) collection|Directory objects that are owned by the user. Read-only. Nullable.|
|people|[person](person.md) collection| People that are relevant to the user. Read-only. Nullable.
|photo|[profilePhoto](profilephoto.md)| The user's profile photo. Read-only.|
|planner|[plannerUser](planneruser.md)| Entry-point to the Planner resource that might exist for a user. Read-only.|
|registeredDevices|[directoryObject](directoryobject.md) collection|Devices that are registered for the user. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true,
  "optionalProperties": [
    "appRoleAssignments",
    "calendar",
    "calendarGroups",
    "calendarView",
    "calendars",
    "contactFolders",
    "contacts",
    "createdObjects",
    "directReports",
    "drive",
    "events",
    "extensions",
    "joinedGroups",
    "mailFolders",
    "manager",
    "memberOf",
    "messages",
    "oauth2PermissionGrants",
    "onenote",
    "ownedDevices",
    "ownedObjects",
    "photo",
    "registeredDevices"
  ],
  "@odata.type": "microsoft.graph.user",
  "@odata.annotations": [
    {
      "capabilities": {
        "changeTracking": true
      }
    },
    {
      "property": "calendar",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "searchable": false,
        "updatable": false
      }
    },
    {
      "property": "calendarGroups",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false
      }
    },
    {
      "property": "calendars",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false
      }
    },
    {
      "property": "calendarView",
      "capabilities": {
        "changeTracking": true,
        "deletable": false,
        "expandable": true,
        "insertable": false,
        "navigability": "single",
        "searchable": false,
        "updatable": false
      }
    },
    {
      "property": "contactFolders",
      "capabilities": {
        "changeTracking": true,
        "expandable": false,
        "searchable": false
      }
    },
    {
      "property": "contacts",
      "capabilities": {
        "changeTracking": true,
        "expandable": false
      }
    },
    {
      "property": "events",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false
      }
    },
    {
      "property": "inferenceClassification",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "searchable": false
      }
    },
    {
      "property": "mailFolders",
      "capabilities": {
        "changeTracking": true,
        "expandable": false,
        "searchable": false
      }
    },
    {
      "property": "messages",
      "capabilities": {
        "changeTracking": false,
        "expandable": false
      }
    },
    {
      "property": "people",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "updatable": false
      }
    },
    {
      "property": "photo",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "searchable": false
      }
    },
    {
      "property": "photos",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "expandable": false,
        "insertable": false,
        "searchable": false,
        "updatable": false
      }
    }
  ]
}-->

```json
{
  "aboutMe": "string",
  "accountEnabled": true,
  "ageGroup": "string",
  "assignedLicenses": [{"@odata.type": "microsoft.graph.assignedLicense"}],
  "assignedPlans": [{"@odata.type": "microsoft.graph.assignedPlan"}],
  "birthday": "String (timestamp)",
  "businessPhones": ["string"],
  "city": "string",
  "companyName": "string",
  "consentProvidedForMinor": "string",
  "country": "string",
  "createdDateTime": "String (timestamp)",
  "creationType": "string",
  "department": "string",
  "displayName": "string",
  "employeeId": "string",
  "faxNumber" : "string",
  "givenName": "string",
  "hireDate": "String (timestamp)",
  "id": "string (identifier)",
  "identities": [{"@odata.type": "microsoft.graph.objectIdentity"}],
  "imAddresses": ["string"],
  "interests": ["string"],
  "isResourceAccount": false,
  "jobTitle": "string",
  "legalAgeGroupClassification": "string",
  "licenseAssignmentStates": [{"@odata.type": "microsoft.graph.licenseAssignmentState"}],
  "lastPasswordChangeDateTime": "String (timestamp)",
  "mail": "string",
  "mailboxSettings": {"@odata.type": "microsoft.graph.mailboxSettings"},
  "mailNickname": "string",
  "mobilePhone": "string",
  "mySite": "string",
  "officeLocation": "string",
  "onPremisesDistinguishedName": "string",
  "onPremisesDomainName": "string",
  "onPremisesExtensionAttributes": {"@odata.type": "microsoft.graph.onPremisesExtensionAttributes"},
  "onPremisesImmutableId": "string",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesProvisioningErrors": [{"@odata.type": "microsoft.graph.onPremisesProvisioningError"}],
  "onPremisesSamAccountName": "string",
  "onPremisesSecurityIdentifier": "string",
  "onPremisesSyncEnabled": true,
  "onPremisesUserPrincipalName": "string",
  "otherMails": "string",
  "passwordPolicies": "string",
  "passwordProfile": {"@odata.type": "microsoft.graph.passwordProfile"},
  "pastProjects": ["string"],
  "postalCode": "string",
  "preferredDataLocation": "string",
  "preferredLanguage": "string",
  "preferredName": "string",
  "provisionedPlans": [{"@odata.type": "microsoft.graph.provisionedPlan"}],
  "proxyAddresses": ["string"],
  "responsibilities": ["string"],
  "schools": ["string"],
  "showInAddressList": true,
  "signInSessionsValidFromDateTime": "String (timestamp)",
  "skills": ["string"],
  "state": "string",
  "streetAddress": "string",
  "surname": "string",
  "usageLocation": "string",
  "userPrincipalName": "string",
  "userType": "string",

  "calendar": { "@odata.type": "microsoft.graph.calendar" },
  "calendarGroups": [{ "@odata.type": "microsoft.graph.calendarGroup" }],
  "calendarView": [{ "@odata.type": "microsoft.graph.event" }],
  "calendars": [ {"@odata.type": "microsoft.graph.calendar"} ],
  "contacts": [ { "@odata.type": "microsoft.graph.contact" } ],
  "contactFolders": [ { "@odata.type": "microsoft.graph.contactFolder" } ],
  "createdObjects": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "directReports": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "drives": [ { "@odata.type": "microsoft.graph.drive" } ],
  "events": [ { "@odata.type": "microsoft.graph.event" } ],
  "inferenceClassification": { "@odata.type": "microsoft.graph.inferenceClassification" },
  "mailFolders": [ { "@odata.type": "microsoft.graph.mailFolder" } ],
  "manager": { "@odata.type": "microsoft.graph.directoryObject" },
  "memberOf": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "messages": [ { "@odata.type": "microsoft.graph.message" } ],
  "outlook": { "@odata.type": "microsoft.graph.outlookUser" },
  "ownedDevices": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "ownedObjects": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "photo": { "@odata.type": "microsoft.graph.profilePhoto" },
  "registeredDevices": [ { "@odata.type": "microsoft.graph.directoryObject" } ]
}

```

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user resource",
  "keywords": "",
  "suppressions" : [
     "Warning: /api-reference/v1.0/resources/user.md/microsoft.graph.user:
      Property 'createdDateTime' found in markdown table but not in resource definition."
  ],
  "section": "documentation",
  "tocPath": ""
}-->
