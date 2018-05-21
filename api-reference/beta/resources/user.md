# user resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an Azure AD user account. Inherits from [directoryObject](directoryobject.md).

This resource supports:

- Adding your own data to custom properties using [extensions](../../../concepts/extensibility_overview.md).
- Using [delta query](../../../concepts/delta_query_overview.md) to track incremental additions, deletions, and updates, by providing a [delta](../api/user_delta.md) function.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List users](../api/user_list.md) |[user](user.md) collection| Get a list of user objects.|
|[Create user](../api/user_post_users.md) |[user](user.md)| Create a new user object.|
|[Get user](../api/user_get.md) | [user](user.md) |Read properties and relationships of user object.|
|[Update user](../api/user_update.md) | [user](user.md) |Update user object. |
|[Delete user](../api/user_delete.md) | None |Delete user object. |
|[List messages](../api/user_list_messages.md) |[Message](message.md) collection| Get all the messages in the signed-in user's mailbox.|
|[Create Message](../api/user_post_messages.md) |[Message](message.md)| Create a Message by posting to the messages collection.|
|[List mailFolders](../api/user_list_mailfolders.md) |[MailFolder](mailfolder.md) collection| Get the mail folder collection under the root folder of the signed-in user. |
|[Create mailFolder](../api/user_post_mailfolders.md) |[MailFolder](mailfolder.md)| Create a new MailFolder by posting to the mailFolders collection.|
|[sendMail](../api/user_sendmail.md)|None|Send the message specified in the request body.|
|[List events](../api/user_list_events.md) |[Event](event.md) collection| Get a list of event objects in the user's mailbox. The list contains single instance meetings and series masters.|
|[Create event](../api/user_post_events.md) |[Event](event.md)| Create a new Event by posting to the events collection.|
|[List calendars](../api/user_list_calendars.md) |[Calendar](calendar.md) collection| Get a Calendar object collection.|
|[Create calendar](../api/user_post_calendars.md) |[Calendar](calendar.md)| Create a new Calendar by posting to the calendars collection.|
|[List calendarGroups](../api/user_list_calendargroups.md) |[CalendarGroup](calendargroup.md) collection| Get a CalendarGroup object collection.|
|[Create calendarGroup](../api/user_post_calendargroups.md) |[CalendarGroup](calendargroup.md)| Create a new CalendarGroup by posting to the calendarGroups collection.|
|[List calendarView](../api/user_list_calendarview.md) |[Event](event.md) collection| Get an Event object collection.|
|[List contacts](../api/user_list_contacts.md) |[Contact](contact.md) collection| Get a contact collection from the default Contacts folder of the signed-in user.|
|[Create Contact](../api/user_post_contacts.md) |[Contact](contact.md)| Create a new Contact by posting to the contacts collection.|
|[List contactFolders](../api/user_list_contactfolders.md) |[ContactFolder](contactfolder.md) collection| Get the contact folder collection in the default Contacts folder of the signed-in user.|
|[Create ContactFolder](../api/user_post_contactfolders.md) |[ContactFolder](contactfolder.md)| Create a new ContactFolder by posting to the contactFolders collection.|
|[List directReports](../api/user_list_directreports.md) |[directoryObject](directoryobject.md) collection| Get the users and contacts that report to the user from the directReports navigation property.|
|[List manager](../api/user_list_manager.md) |[directoryObject](directoryobject.md) | Get the user or contact that is this user's manager from the manager navigation property.|
|[List memberOf](../api/user_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get the groups, directory roles, and administrative units that the user is a direct member of from the memberOf navigation property.|
|[List joinedTeams](../api/user_list_joinedTeams.md) |[groups](group.md) collection| Get the Microsoft Teams that the user is a direct member of from the joinedTeams navigation property.|
|[List ownedDevices](../api/user_list_owneddevices.md) |[directoryObject](directoryobject.md) collection| Get the devices that are owned by the user from the ownedDevices navigation property.|
|[List ownedObjects](../api/user_list_ownedobjects.md) |[directoryObject](directoryobject.md) collection| Get the directory objects that are owned by the user from the ownedObjects navigation property.|
|[List plannerTasks](../api/planneruser_list_tasks.md) |[plannerTask](plannerTask.md) collection| Get plannerTasks assigned to the user.|
|[List registeredDevices](../api/user_list_registereddevices.md) |[directoryObject](directoryobject.md) collection| Get the devices that are registered for the user from the registeredDevices navigation property.|
|[List scoped-role memberships](../api/user_list_scopedrolememberof.md) |[scopedRoleMembership](scopedrolemembership.md) collection| Get the scoped-role administrative units memberships for this user.|
|[List createdObjects](../api/user_list_createdobjects.md) |[directoryObject](directoryobject.md) collection| Get the directory objects created by the user from the createdObjects navigation property.|
|[List agreementAcceptances](../api/user_list_agreementacceptances.md) | [agreementAcceptance](agreementacceptance.md) collection | Get a list of terms of use acceptance statuses of the user.|
|[assignLicense](../api/user_assignlicense.md)|[user](user.md)|Add or remove subscriptions for the user. You can also enable and disable specific plans associated with a subscription.|
|[List licenseDetails](../api/user_list_licensedetails.md) |[licenseDetails](licensedetails.md) collection| Get a licenseDetails object collection.|
|[checkMemberGroups](../api/user_checkmembergroups.md)|String collection|Check for membership in a list of groups. The check is transitive.|
|[findmeetingtimes](../api/user_findmeetingtimes.md)|[meetingTimeCandidate](meetingtimecandidate.md)|Find time and locations to meet based on attendee availability, location, or time constraints.|
|[findRoomLists](../api/user_findroomlists.md)|[emailaddress.md](emailaddress.md) collection | Get the room lists defined in a tenant.|
|[findRooms](../api/user_findrooms.md)|[emailaddress.md](emailaddress.md) collection | Get all the meeting rooms in the user's tenant or in a specific room list. |
|[getMailTips](../api/user_getmailtips.md)|[mailTips](mailtips.md) collection|Return the MailTips of one or more recipients as available to the signed-in user. |
|[getMemberGroups](../api/user_getmembergroups.md)|String collection|Return all the groups that the user is a member of. The check is transitive.|
|[getMemberObjects](../api/user_getmemberobjects.md)|String collection| Return all the groups, directory roles, and administrative units that the user is a member of. The check is transitive. |
|[invalidateAllRefreshTokens](../api/user_invalidateallrefreshtokens.md)| None |Invalidates all the user's refresh and session tokens issued to applications, by resetting the **refreshTokensValidFromDateTime** user property to the current date-time. This forces the user to sign in to those applications again.|
|[reminderView](../api/user_reminderview.md)|[Reminder](reminder.md) collection|Return a list of calendar reminders within the start and end times specified.|
|[delta](../api/user_delta.md)|user collection| Get incremental changes for users. |
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](../../../concepts/extensibility_schema_groups.md) || Create a schema extension definition and then use it to add custom typed data to a resource.|

## Properties
| Property       | Type    | Description |
|:---------------|:--------|:------------|
|aboutMe|String|A freeform text entry field for the user to describe themselves.|
| accountEnabled|Boolean| **true** if the account is enabled; otherwise, **false**. This property is required when a user is created. Supports $filter.    |
|ageGroup|String|Sets the age group of the user. Allowed values: `null`, `minor`, `notAdult` and `adult`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information. |
|assignedLicenses|[assignedLicense](assignedlicense.md) collection|The licenses that are assigned to the user. Not nullable.            |
|assignedPlans|[assignedPlan](assignedplan.md) collection|The plans that are assigned to the user. Read-only. Not nullable. |
|birthday|DateTimeOffset|The birthday of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|city|String|The city in which the user is located. Supports $filter.|
| companyName | String | The company name which the user is associated. Read-only.
|consentProvidedForMinor|String|Sets whether consent has been obtained for minors. Allowed values: `null`, `granted`, `denied` and `notRequired`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information.|
|country|String|The country/region in which the user is located; for example, “US” or “UK”. Supports $filter.|
|deletedDateTime|DateTimeOffset| The date and time the user was deleted. |
|department|String|The name for the department in which the user works. Supports $filter.|
|displayName|String|The name displayed in the address book for the user. This value is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it cannot be cleared during updates. Supports $filter and $orderby.|
|employeeId|String|The employee identifier assigned to the user by the organization. Supports $filter.|
|givenName|String|The given name (first name) of the user. Supports $filter.|
|hireDate|DateTimeOffset|The hire date of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String|The unique identifier for the user. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|
|interests|String collection|A list for the user to describe their interests.|
|jobTitle|String|The user’s job title. Supports $filter.|
|legalAgeGroupClassification|String| Used by enterprise applications to determine the legal age group of the user. This property is read-only and calculated based on `ageGroup` and `consentProvidedForMinor` properties. Allowed values: `null`, `minorWithOutParentalConsent`, `minorWithParentalConsent`, `minorNoParentalConsentRequired`, `notAdult` and `adult`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information.)|
|mail|String|The SMTP address for the user, for example, "jeff@contoso.onmicrosoft.com". Read-Only. Supports $filter.|
|mailboxSettings|[mailboxSettings](mailboxsettings.md)|Settings for the primary mailbox of the signed-in user. You can [get](../api/user_get_mailboxsettings.md) or [update](../api/user_update_mailboxsettings.md) settings for sending automatic replies to incoming messages, locale, and time zone.|
|mailNickname|String|The mail alias for the user. This property must be specified when a user is created. Supports $filter.|
|mobilePhone|String|The primary cellular telephone number for the user.|
|mySite|String|The URL for the user's personal site.|
|officeLocation|String|The office location in the user's place of business.|
|onPremisesDomainName|String| Contains the on-premises `domainFQDN`, also called dnsDomainName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |
|onPremisesExtensionAttributes|[OnPremisesExtensionAttributes](onpremisesextensionattributes.md)|Contains ExtensionAttributes 1-15 for the user. Note that the individual extension attributes are neither selectable nor filterable. For an `onPremisesSyncEnabled` user, this set of properties is mastered on-premises and is read-only. For a cloud-only user (where `onPremisesSyncEnabled` is false), these properties may be set during creation or update. |
|onPremisesImmutableId|String|This property is used to associate an on-premises Active Directory user account to their Azure AD user object. This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user’s `userPrincipalName` (UPN) property. **Important:** The **$** and **_** characters cannot be used when specifying this property. Supports $filter. |
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory; for example: "2013-02-16T03:04:54Z". The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|onPremisesSamAccountName|String| Contains the on-premises `sAMAccountName` synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the user that was synchronized from on-premises to the cloud. Read-only.|
|onPremisesSyncEnabled|Boolean| **true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). Read-only |
|onPremisesUserPrincipalName|String| Contains the on-premises `userPrincipalName` synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect. Read-only. |
|passwordPolicies|String|Specifies password policies for the user. This value is an enumeration with one possible value being “DisableStrongPassword”, which allows weaker passwords than the default policy to be specified. “DisablePasswordExpiration” can also be specified. The two may be specified together; for example: "DisablePasswordExpiration, DisableStrongPassword".|
|passwordProfile|[PasswordProfile](passwordprofile.md)|Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required.|
|pastProjects|String collection|A list for the user to enumerate their past projects.|
|postalCode|String|The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.|
|preferredLanguage|String|The preferred language for the user. Should follow ISO 639-1 Code; for example "en-US".|
|preferredName|String|The preferred name for the user.|
|provisionedPlans|[ProvisionedPlan](provisionedplan.md) collection|The plans that are provisioned for the user. Read-only. Not nullable. |
|proxyAddresses|String collection|For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]` The **any** operator is required for filter expressions on multi-valued properties. Read-only, Not nullable. Supports $filter.          |
|refreshTokensValidFromDateTime|DateTimeOffset| Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications will get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph).  If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint. Read-only. Use [invalidateAllRefreshTokens](../api/user_invalidateallrefreshtokens.md) to reset.|
|responsibilities|String collection|A list for the user to enumerate their responsibilities.|
|schools|String collection|A list for the user to enumerate the schools they have attended.|
|showInAddressList|Boolean|**true** if the Outlook global address list should contain this user, otherwise **false**. If not set, this will be treated as **true**. For users invited through the invitation manager, this property will be set to **false**.|
|skills|String collection|A list for the user to enumerate their skills.|
|state|String|The state or province in the user's address. Supports $filter.|
|streetAddress|String|The street address of the user's place of business.|
|surname|String|The user's surname (family name or last name). Supports $filter.|
|usageLocation|String|A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.  Examples include: "US", "JP", and "GB". Not nullable. Supports $filter.|
|userPrincipalName|String|The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](organization.md). Supports $filter and $orderby.
|userType|String|A string value that can be used to classify user types in your directory, such as “Member” and “Guest”. Supports $filter.          |

### Legal age group property definitions

This section explains how the three age group properties (`legalAgeGroup`, `ageGroup` and `consentProvidedForMinor`) are used by Azure AD administrators and enterprise application developers to meet age-related regulations.

For example: Cameron is administrator of a directory for an elementary school in Holyport in the United Kingdom. At the beginning of the school year he uses the admissions paperwork to obtain consent from the minor's parents based on the age-related regulations of the United Kingdom. The consent obtained from the parent allows the minor's account to be used by Holyport school and Microsoft apps. Cameron then creates all the accounts and sets ageGroup to "minor" and consentProvidedForMinor to "granted". Applications used by his students are then able to supress features that are not suitable for minors.

#### Legal age group classification

This read-only property is used by enterprise application developers to ensure the correct handling of a user based on their legal age group. It is calculated based on the user's `ageGroup` and `consentProvidedForMinor` properties.

| Value	   | #	|Description|
|:---------------|:--------|:----------|
|null|0|Default value, no `ageGroup` has been set for the user.|
|minorWithoutParentalConsent |1|(Reserved for future use)|
|minorWithParentalConsent|2| The user is considered a minor based on the age-related regulations of their country or region and the adminstrator of the account has obtained appropriate consent from a parent or guardian.|
|adult|3|The user considered an adult based on the age-related regulations of their country or region.|
|notAdult|4|The user is from a country or region that has additional age-related regulations (such as the United States, United Kingdom, European Union or South Korea), and the user's age is between a minor and an adult age (as stipulated based on country or region). Generally, this means that teenagers are considered as `notAdult` in regulated countries.|
|minorNoParentalConsentRequired|5|The user is a minor but is from a country or region that has no age-related regulations.|

#### Age group and minor consent

The age group and minor consent properties are optional properties used by Azure AD administrators to help ensure the use of an account is handled correctly based on the age-related regulatory rules governing the user's country or region.

##### ageGroup property

| Value	   | #	|Description|
|:---------------|:--------|:----------|
|null|0|Default value, no `ageGroup` has been set for the user.|
|minor|1|The user is consider a minor.|
|notAdult|2|The user is from a country that has statutory regulations  United States, United Kingdom, European Union or South Korea) and user’s age is more than the upper limit of kid age (as per country) and less than lower limit of adult age (as stipulated based on country or region). So basically, teenagers are considered as `notAdult` in regulated countries.|
|adult|3|The user should be a treated as an adult.|

 ##### consentProvidedForMinor property

| Value	   | #	|Description|
|:---------------|:--------|:----------|
|null|0|Default value, no `consentProvidedForMinor` has been set for the user.|
|granted|1|Consent has been obtained for the user to have an account.|
|denied|2|Consent has not been obtained for the user to have an account.|
|notRequired|3|The user is from a location that does not require consent.|
 
## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|agreementAcceptances|[agreementAcceptance](agreementacceptance.md) collection| The user's terms of use acceptance statuses. Read-only. Nullable.|
|calendar|[calendar](calendar.md)|The user's primary calendar. Read-only.|
|calendarGroups|[calendarGroup](calendargroup.md) collection|The user's calendar groups. Read-only. Nullable.|
|calendarView|[event](event.md) collection|The calendar view for the calendar. Read-only. Nullable.|
|calendars|[calendar](calendar.md) collection|The user's calendars. Read-only. Nullable.|
|contactFolders|[contactFolder](contactfolder.md) collection|The user's contacts folders. Read-only. Nullable.|
|contacts|[contact](contact.md) collection|The user's contacts. Read-only. Nullable.|
|createdObjects|[directoryObject](directoryobject.md) collection|Directory objects that were created by the user. Read-only. Nullable.|
|directReports|[directoryObject](directoryobject.md) collection|The users and contacts that report to the user. (The users and contacts that have their manager property set to this user.) Read-only. Nullable. |
|drive|[drive](drive.md)|The user's OneDrive. Read-only.|
|events|[event](event.md) collection|The user's events. Default is to show Events under the Default Calendar. Read-only. Nullable.|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the user. Nullable.|
|inferenceClassification|[inferenceClassification](inferenceclassification.md)| Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance. |
|insights|[insights](insights.md) collection| Read-only. Nullable.|
|joinedGroups|[group](group.md) collection| Read-only. Nullable.|
|mailFolders|[mailFolder](mailfolder.md) collection| The user's mail folders. Read-only. Nullable.|
|manager|[directoryObject](directoryobject.md)|The user or contact that is this user’s manager. Read-only. (HTTP Methods: GET, PUT, DELETE.)|
|memberOf|[directoryObject](directoryobject.md) collection|The groups, directory roles and administrative units that the user is a member of. Read-only. Nullable.|
|joinedTeams|[group](group.md) collection|The Microsoft Teams that the user is a member of. Read-only. Nullable.|
|messages|[message](message.md) collection|The messages in a mailbox or folder. Read-only. Nullable.|
|onenote|[OneNote](onenote.md)| Read-only.|
|outlook|[outlookUser](outlookuser.md)| Selective Outlook services available to the user. Read-only. Nullable.|
|ownedDevices|[directoryObject](directoryobject.md) collection|Devices that are owned by the user. Read-only. Nullable.|
|ownedObjects|[directoryObject](directoryobject.md) collection|Directory objects that are owned by the user. Read-only. Nullable.|
|people|[person](person.md) collection| Read-only. The most relevant people to the user. The collection is ordered by their relevance to the user, which is determined by the user's communication, collaboration and business relationships. A person is an aggregation of information from across mail, contacts and social networks.|
|photo|[profilePhoto](profilephoto.md)| The user's profile photo. Read-only.|
|photos|[Photo](photo.md) collection| Read-only. Nullable.|
|planner|[plannerUser](plannerUser.md)| Selective Planner services available to the user. Read-only. Nullable. |
|sharepoint|[sharepoint](sharepoint.md)| Access to the user's SharePoint site. Read-only. |
|scopedRoleMemberOf|[scopedRoleMembership](scopedrolemembership.md) collection| The scoped-role administrative unit memberships for this user. Read-only. Nullable.|
|settings|[settings](user_settings.md) collection| Read-only. Nullable.|
|registeredDevices|[directoryObject](directoryobject.md) collection|Devices that are registered for the user. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
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
    "joinedTeams",
    "messages",
    "onenote",
    "oauth2PermissionGrants",
    "outlook",
    "ownedDevices",
    "ownedObjects",
    "photo",
    "registeredDevices"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}-->

```json
{
  "aboutMe": "string",
  "accountEnabled": true,
  "assignedLicenses": [{"@odata.type": "microsoft.graph.assignedLicense"}],
  "assignedPlans": [{"@odata.type": "microsoft.graph.assignedPlan"}],
  "birthday": "String (timestamp)",
  "businessPhones": ["string"],
  "city": "string",
  "companyName": "string",
  "country": "string",
  "deletedDateTime": "String (timestamp)",
  "department": "string",
  "displayName": "string",
  "givenName": "string",
  "hireDate": "String (timestamp)",
  "id": "string (identifier)",
  "interests": ["string"],
  "jobTitle": "string",
  "mail": "string",
  "mailboxSettings": {"@odata.type": "microsoft.graph.mailboxSettings"},
  "mailNickname": "string",
  "mobilePhone": "string",
  "mySite": "string",
  "officeLocation": "string",
  "onPremisesExtensionAttributes": {"@odata.type": "microsoft.graph.onPremisesExtensionAttributes"},
  "onPremisesImmutableId": "string",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSecurityIdentifier": "string",
  "onPremisesSyncEnabled": true,
  "passwordPolicies": "string",
  "passwordProfile": {"@odata.type": "microsoft.graph.passwordProfile"},
  "pastProjects": ["string"],
  "postalCode": "string",
  "preferredLanguage": "string",
  "preferredName": "string",
  "provisionedPlans": [{"@odata.type": "microsoft.graph.provisionedPlan"}],
  "proxyAddresses": ["string"],
  "responsibilities": ["string"],
  "schools": ["string"],
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
  "insights": { "@odata.type": "microsoft.graph.officeGraphInsights" },
  "settings": { "@odata.type": "microsoft.graph.userSettings" },
  "events": [ { "@odata.type": "microsoft.graph.event" } ],
  "extensions": [ { "@odata.type": "microsoft.graph.extension" } ],
  "inferenceClassification": { "@odata.type": "microsoft.graph.inferenceClassification" },
  "mailFolders": [ { "@odata.type": "microsoft.graph.mailFolder" } ],
  "manager": { "@odata.type": "microsoft.graph.directoryObject" },
  "memberOf": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "joinedTeams": [ { "@odata.type": "microsoft.graph.group" } ],
  "messages": [ { "@odata.type": "microsoft.graph.message" } ],
  "outlook": { "@odata.type": "microsoft.graph.outlookUser" },
  "ownedDevices": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "photo": { "@odata.type": "microsoft.graph.profilePhoto" },
  "registeredDevices": [ { "@odata.type": "microsoft.graph.directoryObject" } ]
}

```

## See also

- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions](../../../concepts/extensibility_open_users.md)
- [Add custom data to groups using schema extensions](../../../concepts/extensibility_schema_groups.md)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
