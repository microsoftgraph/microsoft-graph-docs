# user resource type

Represents an Azure AD user account. Inherits from [directoryObject](directoryobject.md).

This resource lets you add your own data to custom properties using [extensions](../../../concepts/extensibility_overview.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get user](../api/user_get.md) | [user](user.md) |Read properties and relationships of user object.|
|[Update user](../api/user_update.md) | [user](user.md) |Update user object. |
|[Delete user](../api/user_delete.md) | None |Delete user object. |
|[List messages](../api/user_list_messages.md) |[Message](message.md) collection| Get all the messages in the signed-in user's mailbox.|
|[Create Message](../api/user_post_messages.md) |[Message](message.md)| Create a new Message by posting to the messages collection.|
|[List mailFolders](../api/user_list_mailfolders.md) |[MailFolder](mailfolder.md) collection| Get the mail folder collection under the root folder of the signed-in user. |
|[Create mailFolder](../api/user_post_mailfolders.md) |[MailFolder](mailfolder.md)| Create a new MailFolder by posting to the mailFolders collection.|
|[sendMail](../api/user_sendmail.md)|None|Send the message specified in the request body.|
|[List events](../api/user_list_events.md) |[Event](event.md) collection| Get a list of event objects in the user's mailbox. The list contains single instance meetings and series masters.|
|[Create event](../api/user_post_events.md) |[Event](event.md)| Create a new Event by posting to the events collection.|
|[List calendars](../api/user_list_calendars.md) |[Calendar](calendar.md) collection| Get a Calendar object collection.|
|[Create calendar](../api/user_post_calendars.md) |[Calendar](calendar.md)| Create a new Calendar by posting to the calendars collection.|
|[List calendarGroups](../api/user_list_calendargroups.md) |[CalendarGroup](calendargroup.md) collection| Get a CalendarGroup object collection.|
|[Create calendarGroup](../api/user_post_calendargroups.md) |[CalendarGroup](calendargroup.md)| Create a new CalendarGroup by posting to the calendarGroups collection.|
|[List calendarView](../api/user_list_calendarview.md) |[Event](event.md) collection| Get a Event object collection.|
|[List contacts](../api/user_list_contacts.md) |[Contact](contact.md) collection| Get a contact collection from the default Contacts folder of the signed-in user.|
|[Create Contact](../api/user_post_contacts.md) |[Contact](contact.md)| Create a new Contact by posting to the contacts collection.|
|[List contactFolders](../api/user_list_contactfolders.md) |[ContactFolder](contactfolder.md) collection| Get the contact folder collection in the default Contacts folder of the signed-in user.|
|[Create ContactFolder](../api/user_post_contactfolders.md) |[ContactFolder](contactfolder.md)| Create a new ContactFolder by posting to the contactFolders collection.|
|[List directReports](../api/user_list_directreports.md) |[directoryObject](directoryobject.md) collection| Get the users and contacts that report to the user from the directReports navigation property.|
|[List manager](../api/user_list_manager.md) |[directoryObject](directoryobject.md) | Get the user or contact that is this user's manager from the manager navigation property.|
|[List memberOf](../api/user_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get the groups and directory roles that the user is a direct member of from the memberOf navigation property.|
|[List ownedDevices](../api/user_list_owneddevices.md) |[directoryObject](directoryobject.md) collection| Get the devices that are owned by the user from the ownedDevices navigation property.|
|[List ownedObjects](../api/user_list_ownedobjects.md) |[directoryObject](directoryobject.md) collection| Get the directory objects that are owned by the user from the ownedObjects navigation property.|
|[List registeredDevices](../api/user_list_registereddevices.md) |[directoryObject](directoryobject.md) collection| Get the devices that are retistered for the user from the registeredDevices navigation property.|
|[List createdObjects](../api/user_list_createdobjects.md) |[directoryObject](directoryobject.md) collection| Get the directory objects created by the user from the createdObjects navigation property.|
|[assignLicense](../api/user_assignlicense.md)|[user](user.md)|Add or remove subscriptions for the user. You can also enable and disable specific plans associated with a subscription.|
|[checkMemberGroups](../api/user_checkmembergroups.md)|String collection|Check for membership in a list of groups. The check is transitive.|
|[getMemberGroups](../api/user_getmembergroups.md)|String collection|Return all the groups that the user is a member of. The check is transitive.|
|[getMemberObjects](../api/user_getmemberobjects.md)|String collection| Return all of the groups and directory roles that the user is a member of. The check is transitive. |
|[reminderView](../api/user_reminderview.md)|[Reminder](reminder.md) collection|Return a list of calendar reminders within the start and end times specified.|



## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
|aboutMe|String|A freeform text entry field for the user to describe themselves.|
|accountEnabled|Boolean| **true** if the account is enabled; otherwise, **false**. This property is required when a user is created. Supports $filter.    |
|assignedLicenses|[assignedLicense](assignedlicense.md) collection|The licenses that are assigned to the user. Not nullable.            |
|assignedPlans|[assignedPlan](assignedplan.md) collection|The plans that are assigned to the user. Read-only. Not nullable. |
|birthday|DateTimeOffset|The birthday of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|city|String|The city in which the user is located. Supports $filter.|
|country|String|The country/region in which the user is located; for example, “US” or “UK”. Supports $filter.|
|department|String|The name for the department in which the user works. Supports $filter.|
|displayName|String|The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial and last name. This property is required when a user is created and it cannot be cleared during updates. Supports $filter and $orderby.|
|givenName|String|The given name (first name) of the user. Supports $filter.|
|hireDate|DateTimeOffset|The hire date of the user. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String|The unique identifier for the user. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.|
|interests|String collection|A list for the user to describe their interests.|
|jobTitle|String|The user’s job title. Supports $filter.|
|mail|String|The SMTP address for the user, for example, "jeff@contoso.onmicrosoft.com". Read-Only. Supports $filter.|
|mailboxSettings|[mailboxSettings](mailboxsettings.md)|Settings for the primary mailbox of the signed-in user. You can [get](../api/user_get_mailboxsettings.md) or [update](../api/user_update_mailboxsettings.md) settings for sending automatic replies to incoming messages, locale and time zone.|
|mailNickname|String|The mail alias for the user. This property must be specified when a user is created. Supports $filter.|
|mobilePhone|String|The primary cellular telephone number for the user.|
|mySite|String|The URL for the user's personal site.|
|officeLocation|String|The office location in the user's place of business.|
|onPremisesImmutableId|String|This property is used to associate an on-premises Active Directory user account to their Azure AD user object. This property must be specified when creating a new user account in the Graph if you are using a federated domain for the user’s **userPrincipalName** (UPN) property. **Important:** The **$** and **_** characters cannot be used when specifying this property. Supports $filter.                            |
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory; for example: "2013-02-16T03:04:54Z". The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the user that was synchronized from on-premises to the cloud. Read-only.|
|onPremisesSyncEnabled|Boolean| **true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). Read-only |
|passwordPolicies|String|Specifies password policies for the user. This value is an enumeration with one possible value being “DisableStrongPassword”, which allows weaker passwords than the default policy to be specified. “DisablePasswordExpiration” can also be specified. The two may be specified together; for example: "DisablePasswordExpiration, DisableStrongPassword".|
|passwordProfile|[PasswordProfile](passwordprofile.md)|Specifies the password profile for the user. The profile contains the user’s password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required.|
|pastProjects|String collection|A list for the user to enumerate their past projects.|
|postalCode|String|The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.|
|preferredLanguage|String|The preferred language for the user. Should follow ISO 639-1 Code; for example "en-US".|
|preferredName|String|The preferred name for the user.|
|provisionedPlans|[ProvisionedPlan](provisionedplan.md) collection|The plans that are provisioned for the user. Read-only. Not nullable. |
|proxyAddresses|String collection|For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]` The **any** operator is required for filter expressions on multi-valued properties. Read-only, Not nullable. Supports $filter.          |
|responsibilities|String collection|A list for the user to enumerate their responsibilities.|
|schools|String collection|A list for the user to enumerate the schools they have attended.|
|skills|String collection|A list for the user to enumerate their skills.|
|state|String|The state or province in the user's address. Supports $filter.|
|streetAddress|String|The street address of the user's place of business.|
|surname|String|The user's surname (family name or last name). Supports $filter.|
|usageLocation|String|A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries.  Examples include: "US", "JP", and "GB". Not nullable. Supports $filter.|
|userPrincipalName|String|The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](organization.md). Supports $filter and $orderby.
|userType|String|A string value that can be used to classify user types in your directory, such as “Member” and “Guest”. Supports $filter.          |

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|calendar|[Calendar](calendar.md)|The user's primary calendar. Read-only.|
|calendarGroups|[CalendarGroup](calendargroup.md) collection|The user's calendar groups. Read-only. Nullable.|
|calendarView|[Event](event.md) collection|The calendar view for the calendar. Read-only. Nullable.|
|calendars|[Calendar](calendar.md) collection|The user's calendars. Read-only. Nullable.|
|contactFolders|[ContactFolder](contactfolder.md) collection|The user's contacts folders. Read-only. Nullable.|
|contacts|[Contact](contact.md) collection|The user's contacts. Read-only. Nullable.|
|createdObjects|[directoryObject](directoryobject.md) collection|Directory objects that were created by the user. Read-only. Nullable.|
|directReports|[directoryObject](directoryobject.md) collection|The users and contacts that report to the user. (The users and contacts that have their manager property set to this user.) Read-only. Nullable. |
|drive|[drive](drive.md)|The user's OneDrive. Read-only.|
|drives|[drive](drive.md) collection. | A collection of drives available for this user. Read-only. |
|events|[Event](event.md) collection|The user's events. Default is to show Events under the Default Calendar. Read-only. Nullable.|
|inferenceClassification | [inferenceClassification](inferenceClassification.md) | Relevance classification of the user's messages based on explicit designations which override inferred relevance or importance. |
|mailFolders|[MailFolder](mailfolder.md) collection| The user's mail folders. Read-only. Nullable.|
|manager|[directoryObject](directoryobject.md)|The user or contact that is this user’s manager. Read-only. (HTTP Methods: GET, PUT, DELETE.)|
|memberOf|[directoryObject](directoryobject.md) collection|The groups and directory roles that the user is a member of. Read-only. Nullable.|
|messages|[Message](message.md) collection|The messages in a mailbox or folder. Read-only. Nullable.|
|ownedDevices|[directoryObject](directoryobject.md) collection|Devices that are owned by the user. Read-only. Nullable.|
|ownedObjects|[directoryObject](directoryobject.md) collection|Directory objects that are owned by the user. Read-only. Nullable.|
|photo|[profilePhoto](profilephoto.md)| The user's profile photo. Read-only.|
|registeredDevices|[directoryObject](directoryobject.md) collection|Devices that are registered for the user. Read-only. Nullable.|
|sites|[site](site.md) collection | A collection of sites available for this user. Read-only. |

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
    "joinedGroups",
    "mailFolders",
    "manager",
    "memberOf",
    "messages",
    "oauth2PermissionGrants",
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
  "drives": [ { "@odata.type": "microsoft.graph.drive" } ],
  "events": [ { "@odata.type": "microsoft.graph.event" } ],
  "inferenceClassification": { "@odata.type": "microsoft.graph.inferenceClassification" },
  "mailFolders": [ { "@odata.type": "microsoft.graph.mailFolder" } ],
  "manager": { "@odata.type": "microsoft.graph.directoryObject" },
  "memberOf": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "messages": [ { "@odata.type": "microsoft.graph.message" } ],
  "ownedDevices": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "photo": { "@odata.type": "microsoft.graph.profilePhoto" },
  "registeredDevices": [ { "@odata.type": "microsoft.graph.directoryObject" } ],
  "sites": [ {"@odata.type": "microsoft.graph.site" }]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
