---
title: "user resource type"
description: "Represents an Azure AD user account. Inherits from directoryObject."
author: "dkershaw10"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# user resource type

Represents an Azure AD user account. Inherits from [directoryObject](directoryobject.md).

This resource supports:

- Adding your own data to custom properties as [extensions](/graph/extensibility-overview).
- Subscribing to [change notifications](/graph/webhooks).
- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/user-delta.md) function.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List users](../api/user-list.md) |[user](user.md) collection| Get a list of user objects.|
|[Create user](../api/user-post-users.md) |[user](user.md)| Create a new user object.|
|[Get user](../api/user-get.md) | [user](user.md) |Read properties and relationships of user object.|
|[Update user](../api/user-update.md) | [user](user.md) |Update user object. |
|[Delete user](../api/user-delete.md) | None |Delete user object. |
|[List messages](../api/user-list-messages.md) |[message](message.md) collection| Get all the messages in the signed-in user's mailbox.|
|[Create message](../api/user-post-messages.md) |[message](message.md)| Create a new Message by posting to the messages collection.|
|[List mailFolders](../api/user-list-mailfolders.md) |[mailFolder](mailfolder.md) collection| Get the mail folder collection under the root folder of the signed-in user. |
|[Create mailFolder](../api/user-post-mailfolders.md) |[mailFolder](mailfolder.md)| Create a new MailFolder by posting to the mailFolders collection.|
|[sendMail](../api/user-sendmail.md)|None|Send the message specified in the request body.|
|[List events](../api/user-list-events.md) |[event](event.md) collection| Get a list of event objects in the user's mailbox. The list contains single instance meetings and series masters.|
|[Create event](../api/user-post-events.md) |[event](event.md)| Create a new Event by posting to the events collection.|
|[List calendars](../api/user-list-calendars.md) |[calendar](calendar.md) collection| Get a Calendar object collection.|
|[Create calendar](../api/user-post-calendars.md) |[calendar](calendar.md)| Create a new Calendar by posting to the calendars collection.|
|[List calendarGroups](../api/user-list-calendargroups.md) |[calendarGroup](calendargroup.md) collection| Get a CalendarGroup object collection.|
|[Create calendarGroup](../api/user-post-calendargroups.md) |[calendarGroup](calendargroup.md)| Create a new CalendarGroup by posting to the calendarGroups collection.|
|[List calendarView](../api/user-list-calendarview.md) |[event](event.md) collection| Get a Event object collection.|
|[List contacts](../api/user-list-contacts.md) |[contact](contact.md) collection| Get a contact collection from the default Contacts folder of the signed-in user.|
|[Create contact](../api/user-post-contacts.md) |[contact](contact.md)| Create a new Contact by posting to the contacts collection.|
|[List contactFolders](../api/user-list-contactfolders.md) |[contactFolder](contactfolder.md) collection| Get the contact folder collection in the default Contacts folder of the signed-in user.|
|[Create contactFolder](../api/user-post-contactfolders.md) |[contactFolder](contactfolder.md)| Create a new ContactFolder by posting to the contactFolders collection.|
|[List directReports](../api/user-list-directreports.md) |[directoryObject](directoryobject.md) collection| Get the users and contacts that report to the user from the directReports navigation property.|
|[List manager](../api/user-list-manager.md) |[directoryObject](directoryobject.md) | Get the user or contact that is this user's manager from the manager navigation property.|
|[List memberOf](../api/user-list-memberof.md) |[directoryObject](directoryobject.md) collection| Get the groups and directory roles that the user is a direct member of from the memberOf navigation property.|
|[List transitive memberOf](../api/user-list-transitivememberof.md) |[directoryObject](directoryobject.md) collection| List the groups and directory roles that the user is a member of. This operation is transitive and includes the groups that the user is a nested member of. |
|[List ownedDevices](../api/user-list-owneddevices.md) |[directoryObject](directoryobject.md) collection| Get the devices that are owned by the user from the ownedDevices navigation property.|
|[List ownedObjects](../api/user-list-ownedobjects.md) |[directoryObject](directoryobject.md) collection| Get the directory objects that are owned by the user from the ownedObjects navigation property.|
|[List registeredDevices](../api/user-list-registereddevices.md) |[directoryObject](directoryobject.md) collection| Get the devices that are retistered for the user from the registeredDevices navigation property.|
|[List createdObjects](../api/user-list-createdobjects.md) |[directoryObject](directoryobject.md) collection| Get the directory objects created by the user from the createdObjects navigation property.|
|[assignLicense](../api/user-assignlicense.md)|[user](user.md)|Add or remove subscriptions for the user. You can also enable and disable specific plans associated with a subscription.|
|[List licenseDetails](../api/user-list-licensedetails.md) |[licenseDetails](licensedetails.md) collection| Get a licenseDetails object collection.|
|[checkMemberGroups](../api/user-checkmembergroups.md)|String collection|Check for membership in a list of groups. The check is transitive.|
|[delta](../api/user-delta.md)|user collection| Get incremental changes for users. |
|[getMemberGroups](../api/user-getmembergroups.md)|String collection|Return all the groups that the user is a member of. The check is transitive.|
|[getMemberObjects](../api/user-getmemberobjects.md)|String collection| Return all of the groups and directory roles that the user is a member of. The check is transitive. |
|[reminderView](../api/user-reminderview.md)|[Reminder](reminder.md) collection|Return a list of calendar reminders within the start and end times specified.|
|[revokeSignInSessions](../api/user-revokesigninsessions.md)| None |Revokes all the user's refresh and session tokens issued to applications, by resetting the **signInSessionsValidFromDateTime** user property to the current date-time. This forces the user to sign in to those applications again.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](/graph/extensibility-schema-groups) || Create a schema extension definition and then use it to add custom typed data to a resource.|

## Query options

| Query option    |Description| Supported |
|:---------------|:--------|:----------|
| Top    | Select top X number of items from the response | N |
| Skip   | Skip top X number of items from the response   | N |
| Filter | Filter payload response                        | Y |
| Count  | Count total number of items that could be returned  | N |
| Select | Select specific properties from the payload   | N |
| Expand | Expand specific properties of the given type    | N |
| OrderBy| Order the results in ascending or descending order   | N |
| Batch  | Send batch request to perform operations on a resource   | N |
| Change tracking  | Track changes on a resource   | N |

## Properties

| Property info       | Filter operations    | Filter Queries (String)|  Filter Queries (Date)| Filter Queries (Cast)| Countable | Navigable | Selectable | Sortable |
|:---------------|:--------|:----------|--:--|--:--|--:--|--:--|--:--|--:--|
|<svg width="350" height="5"><rect width="350" height="2" style="fill:rgb(255,255,255);stroke-width:1;stroke:rgb(220,220,220)" /> </svg>|||||||||
|`aboutMe`<br/>**type:** String <br/>**description:** A freeform text entry field for the user to describe themselves.|Y|Y|Y|Y|Y|Y|Y|Y|
|`accountEnabled`<br/>**type:** Boolean <br/>**description:**  **true** if the account is enabled; otherwise, **false**. This property is required when a user is created. Supports $filter.    |Y|Y|Y|Y|Y|Y|Y|Y|
|`ageGroup`<br/>**type:** String <br/>**description:** Sets the age group of the user. Allowed values: `null`, `minor`, `notAdult` and `adult`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information. |Y|Y|Y|Y|Y|Y|Y|Y|
|`assignedLicenses`<br/>**type:** [assignedLicense](assignedlicense.md) collection <br/>**description:** The licenses that are assigned to the user. Not nullable.            |Y|Y|Y|Y|Y|Y|Y|Y|
|`assignedPlans`<br/>**type:** [assignedPlan](assignedplan.md) collection <br/>**description:** The plans that are assigned to the user. Read-only. Not nullable. |Y|Y|Y|Y|Y|Y|Y|Y|
|`birthday`<br/>**type:** DateTimeOffset <br/>**description:** The birthday of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|Y|Y|Y|Y|Y|Y|Y|Y|
|`businessPhones`<br/>**type:** String collection <br/>**description:** The telephone numbers for the user. NOTE: Although this is a string collection, only one number can be set for this property.|Y|Y|Y|Y|Y|Y|Y|Y|
|`city`<br/>**type:** String <br/>**description:** The city in which the user is located. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`companyName`<br/>**type:** String<br/>**description:**  The company name which the user is associated. This property can be useful for describing the company that an external user comes from. Y|Y|Y|Y|Y|Y|Y|Y|
|`consentProvidedForMinor`<br/>**type:** String <br/>**description:** Sets whether consent has been obtained for minors. Allowed values: `null`, `granted`, `denied` and `notRequired`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information.|Y|Y|Y|Y|Y|Y|Y|Y|
|`country`<br/>**type:** String <br/>**description:** The country/region in which the user is located; for example, “US” or “UK”. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`createdDateTime`<br/>**type:**  DateTimeOffset <br/>**description:** The created date of the user object. Y|Y|Y|Y|Y|Y|Y|Y|
|`department`<br/>**type:** String <br/>**description:** The name for the department in which the user works. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`displayName`<br/>**type:** String <br/>**description:** The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial and last name. This property is required when a user is created and it cannot be cleared during updates. Supports $filter and $orderby.|Y|Y|Y|Y|Y|Y|Y|Y|
|`employeeId`<br/>**type:** String <br/>**description:** The employee identifier assigned to the user by the organization. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`faxNumber`<br/>**type:** String <br/>**description:** The fax number of the user.|Y|Y|Y|Y|Y|Y|Y|Y|
|`givenName`<br/>**type:** String <br/>**description:** The given name (first name) of the user. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`hireDate`<br/>**type:** DateTimeOffset <br/>**description:** The hire date of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|Y|Y|Y|Y|Y|Y|Y|Y|
|`id`<br/>**type:** String <br/>**description:** The unique identifier for the user. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|Y|Y|Y|Y|Y|Y|Y|Y|
|`imAddresses`<br/>**type:** String collection <br/>**description:** The instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user. Read-only.|Y|Y|Y|Y|Y|Y|Y|Y|
|`interests`<br/>**type:** String collection <br/>**description:** A list for the user to describe their interests.|Y|Y|Y|Y|Y|Y|Y|Y|
|`isResourceAccount`<br/>**type:** Boolean <br/>**description:**  **true** if the user is a resource account; otherwise, **false**. Null value should be considered **false**.|Y|Y|Y|Y|Y|Y|Y|Y|
|`jobTitle`<br/>**type:** String <br/>**description:** The user’s job title. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`legalAgeGroupClassification`<br/>**type:** String <br/>**description:**  Used by enterprise applications to determine the legal age group of the user. This property is read-only and calculated based on `ageGroup` and `consentProvidedForMinor` properties. Allowed values: `null`, `minorWithOutParentalConsent`, `minorWithParentalConsent`, `minorNoParentalConsentRequired`, `notAdult` and `adult`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information.)|Y|Y|Y|Y|Y|Y|Y|Y|
|`licenseAssignmentStates`<br/>**type:** [licenseAssignmentState](licenseassignmentstate.md) collection <br/>**description:** State of license assignments for this user. Read-only.|Y|Y|Y|Y|Y|Y|Y|Y|
|`mail`<br/>**type:** String <br/>**description:** The SMTP address for the user, for example, "jeff@contoso.onmicrosoft.com". Read-Only. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`mailboxSettings`<br/>**type:** [mailboxSettings](mailboxsettings.md) <br/>**description:** Settings for the primary mailbox of the signed-in user. You can [get](../api/user-get-mailboxsettings.md) or [update](../api/user-update-mailboxsettings.md) settings for sending automatic replies to incoming messages, locale and time zone.|Y|Y|Y|Y|Y|Y|Y|Y|
|`mailNickname`<br/>**type:** String <br/>**description:** The mail alias for the user. This property must be specified when a user is created. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`mobilePhone`<br/>**type:** String <br/>**description:** The primary cellular telephone number for the user.|Y|Y|Y|Y|Y|Y|Y|Y|
|`mySite`<br/>**type:** String <br/>**description:** The URL for the user's personal site.|Y|Y|Y|Y|Y|Y|Y|Y|
|`officeLocation`<br/>**type:** String <br/>**description:** The office location in the user's place of business.|Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesDistinguishedName`<br/>**type:** String <br/>**description:**  Contains the on-premises Active Directory `distinguished name` or `DN`. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesDomainName`<br/>**type:** String <br/>**description:**  Contains the on-premises `domainFQDN`, also called dnsDomainName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesExtensionAttributes`<br/>**type:** [onPremisesExtensionAttributes](onpremisesextensionattributes.md) <br/>**description:** Contains extensionAttributes 1-15 for the user. Note that the individual extension attributes are neither selectable nor filterable. For an `onPremisesSyncEnabled` user, this set of properties is mastered on-premises and is read-only. For a cloud-only user (where `onPremisesSyncEnabled` is false), these properties may be set during creation or update. |Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesImmutableId`<br/>**type:** String <br/>**description:** This property is used to associate an on-premises Active Directory user account to their Azure AD user object. This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user’s **userPrincipalName** (UPN) property. **Important:** The **$** and **\_** characters cannot be used when specifying this property. Supports $filter.                            |Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesLastSyncDateTime`<br/>**type:** DateTimeOffset <br/>**description:** Indicates the last time at which the object was synced with the on-premises directory; for example: "2013-02-16T03:04:54Z". The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesProvisioningErrors`<br/>**type:** [onPremisesProvisioningError](onpremisesprovisioningerror.md) collection <br/>**description:**  Errors when using Microsoft synchronization product during provisioning. |Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesSamAccountName`<br/>**type:** String <br/>**description:**  Contains the on-premises `samAccountName` synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesSecurityIdentifier`<br/>**type:** String <br/>**description:** Contains the on-premises security identifier (SID) for the user that was synchronized from on-premises to the cloud. Read-only.|Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesSyncEnabled`<br/>**type:** Boolean <br/>**description:**  **true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). Read-only |Y|Y|Y|Y|Y|Y|Y|Y|
|`onPremisesUserPrincipalName`<br/>**type:** String <br/>**description:**  Contains the on-premises `userPrincipalName` synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |Y|Y|Y|Y|Y|Y|Y|Y|
|`otherMails`<br/>**type:** String <br/>**description:**  A list of additional email addresses for the user; for example: `["bob@contoso.com", "Robert@fabrikam.com"]`. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`passwordPolicies`<br/>**type:** String <br/>**description:** Specifies password policies for the user. This value is an enumeration with one possible value being “DisableStrongPassword”, which allows weaker passwords than the default policy to be specified. “DisablePasswordExpiration” can also be specified. The two may be specified together; for example: "DisablePasswordExpiration, DisableStrongPassword".|Y|Y|Y|Y|Y|Y|Y|Y|
|`passwordProfile`<br/>**type:** [passwordProfile](passwordprofile.md) <br/>**description:** Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required.|Y|Y|Y|Y|Y|Y|Y|Y|
|`pastProjects`<br/>**type:** String collection <br/>**description:** A list for the user to enumerate their past projects.|Y|Y|Y|Y|Y|Y|Y|Y|
|`postalCode`<br/>**type:** String <br/>**description:** The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.|Y|Y|Y|Y|Y|Y|Y|Y|
|`preferredDataLocation`<br/>**type:** String <br/>**description:** The preferred data location for the user. For more information, see [OneDrive Online Multi-Geo](https://docs.microsoft.com/sharepoint/dev/solution-guidance/multigeo-introduction).|Y|Y|Y|Y|Y|Y|Y|Y|
|`preferredLanguage`<br/>**type:** String <br/>**description:** The preferred language for the user. Should follow ISO 639-1 Code; for example "en-US".|Y|Y|Y|Y|Y|Y|Y|Y|
|`preferredName`<br/>**type:** String <br/>**description:** The preferred name for the user.|Y|Y|Y|Y|Y|Y|Y|Y|
|`provisionedPlans`<br/>**type:** [provisionedPlan](provisionedplan.md) collection <br/>**description:** The plans that are provisioned for the user. Read-only. Not nullable. |Y|Y|Y|Y|Y|Y|Y|Y|
|`proxyAddresses`<br/>**type:** String collection <br/>**description:** For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]` The **any** operator is required for filter expressions on multi-valued properties. Read-only, Not nullable. Supports $filter.          |Y|Y|Y|Y|Y|Y|Y|Y|
|`responsibilities`<br/>**type:** String collection <br/>**description:** A list for the user to enumerate their responsibilities.|Y|Y|Y|Y|Y|Y|Y|Y|
|`schools`<br/>**type:** String collection <br/>**description:** A list for the user to enumerate the schools they have attended.|Y|Y|Y|Y|Y|Y|Y|Y|
|`showInAddressList`<br/>**type:** Boolean <br/>**description:** **true** if the Outlook global address list should contain this user, otherwise **false**. If not set, this will be treated as **true**. For users invited through the invitation manager, this property will be set to **false**.|Y|Y|Y|Y|Y|Y|Y|Y|
|`skills`<br/>**type:** String collection <br/>**description:** A list for the user to enumerate their skills.|Y|Y|Y|Y|Y|Y|Y|Y|
|`signInSessionsValidFromDateTime`<br/>**type:** DateTimeOffset <br/>**description:**  Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications will get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph).  If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint. Read-only. Use [revokeSignInSessions](../api/user-revokesigninsessions.md) to reset.|Y|Y|Y|Y|Y|Y|Y|Y|
|`state`<br/>**type:** String <br/>**description:** The state or province in the user's address. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`streetAddress`<br/>**type:** String <br/>**description:** The street address of the user's place of business.|Y|Y|Y|Y|Y|Y|Y|Y|
|`surname`<br/>**type:** String <br/>**description:** The user's surname (family name or last name). Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`usageLocation`<br/>**type:** String <br/>**description:** A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.  Examples include: "US", "JP", and "GB". Not nullable. Supports $filter.|Y|Y|Y|Y|Y|Y|Y|Y|
|`userPrincipalName`<br/>**type:** String <br/>**description:** The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](organization.md). Supports $filter and $orderby|Y|Y|Y|Y|Y|Y|Y|Y|
|`userType`<br/>**type:** String <br/>**description:** A string value that can be used to classify user types in your directory, such as “Member” and “Guest”. Supports $filter.       |Y|Y|Y|Y|Y|Y|Y|Y|

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
|minor|1|The user is consider a minor.|
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
  "department": "string",
  "displayName": "string",
  "employeeId": "string",
  "faxNumber" : "string",
  "givenName": "string",
  "hireDate": "String (timestamp)",
  "id": "string (identifier)",
  "imAddresses": ["string"],
  "interests": ["string"],
  "isResourceAccount": false,
  "jobTitle": "string",
  "legalAgeGroupClassification": "string",
  "licenseAssignmentStates": [{"@odata.type": "microsoft.graph.licenseAssignmentState"}],
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
