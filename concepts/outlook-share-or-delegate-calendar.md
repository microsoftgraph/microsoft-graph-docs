---
title: "Share or delegate a calendar in Outlook"
description: "In Outlook, a calendar owner can share the calendar with another user, or delegate another user to manage meetings in the owner's primary calendar."
author: "juforan"
localization_priority: Priority
ms.prod: "outlook"
---

# Share or delegate a calendar in Outlook

In Outlook, a calendar owner can share the calendar with another user. The owner can specify which information in non-private events is viewable, and can give write access to the calendar to users in the same organization. 

The owner can also delegate another user to manage meetings in the owner's _primary_ calendar. Delegates are sharees who can view all information in and have write access to non-private events. They also receive meeting requests and responses, and respond to meeting requests on behalf of the owner. Additionally, the owner can give explicit permissions to delegates to view the owner's _private_ events on the calendar. 

Before calendar sharing or delegation can take effect, the owner sends a sharee or delegate an invitation, and the sharee or delegate accepts the invitation, or, explicitly adds the shared or delegated calendar for access. The invitation and adding a shared or delegated calendar occur in an Outlook client. 

After sharing or delegation is set up in Outlook, apps can then use the Microsoft Graph API to manage the sharing and delegation.

The rest of this article is based on the following example scenario:

- Alex Wilber has delegated Megan Bowen to his primary calendar, and also permitted Megan to view private events in that calendar. 
- Alex shared a "Kids parties" calendar with Adele Vance and Megan Bowen, and gave both Adele and Megan `read` permissions to all the details of non-private events on the "Kids parties" calendar, and free/busy status for private events. 

This article describes programmatically carrying out the following tasks with a shared or delegated calendar:

- [Get calendar information about sharees, delegates, and allowed permissions, and update individual permissions](#get-calendar-information-about-sharees-and-delegates-and-update-individual-permissions).
- [Get the properties that describe the sharing or delegation of the calendar](#get-properties-of-a-shared-or-delegated-calendar).
- [Get or set mailbox setting to receive meeting requests and responses for a delegated calendar](#get-or-set-mailbox-setting-to-receive-meeting-requests-and-responses).
- [Delete a sharee or delegate of a calendar](#delete-a-sharee-or-delegate-of-a-calendar).

Apps can also do the following using API that is generally available:

- [Get shared or delegated Outlook calendar or its events](outlook-get-shared-events-calendars.md)
- [Create Outlook events in a shared or delegated calendar](outlook-create-event-in-shared-delegated-calendar.md)

> [!NOTE]
> The properties and API for calendar sharing and delegating as described in this topic are currently available in the v1.0 endpoint, with the exception of the calendar properties **isShared** and **isSharedWithMe**. These two properties are exposed in only the beta endpoint.

## Get calendar information about sharees and delegates, and update individual permissions

In this section:

- [Calendar owner: Get sharing or delegation information and permissions](#calendar-owner-get-sharing-or-delegation-information-and-permissions)
- [Calendar owner: Update permissions for an existing sharee or delegate on a calendar](#calendar-owner-update-permissions-for-an-existing-sharee-or-delegate-on-a-calendar)

Each calendar is associated with a collection of [calendarPermission](/graph/api/resources/calendarpermission) objects, each of which describes a sharee or delegate and the associated permission that the calendar owner has set up. The [calendarRoleType](/graph/api/resources/calendarpermission#calendarroletype-values) enumeration defines the range of permissions that Microsoft Graph supports:

- `none`
    This value applies to only `My Organization` which does not have any permissions to the calendar. It doesn't apply to individual users, as only users with permissions are associated with a **calendarPermission** object for the calendar.
- `freeBusyRead`
    The sharee can view the owner's free/busy status, but not other details on the calendar.
- `limitedRead`
    The sharee can view the owner's free/busy status, and the titles and locations of non-private events on the calendar.
- `read`
    The sharee can view the owner's free/busy status in private events, and all the details of non-private events on the calendar.
- `write`
    The sharee can view the owner's free/busy status in private events, and can view all the details and edit (create, update, or delete) non-private events on the calendar.
- `delegateWithoutPrivateEventAccess`
    The _delegate_ can view the owner's free/busy status in private events, and has `write` access to non-private events on the calendar.
- `delegateWithPrivateEventAccess`
    The _delegate_ can view details of the owner's private and non-private events, and has `write` access to all the events on the calendar.

The primary calendar of a user is always shared with "My Organization", which represents the users in the same organization as the owner. By default, they can read the owner's free/busy status on that calendar and have the `freeBusyRead` permission.


### Calendar owner: Get sharing or delegation information and permissions

This example shows with the consent of Alex or administrator, how to get the **calendarPermission** objects associated with Alex' primary calendar. The request returns two such permission objects:

- The first **calendarPermission** object is assigned to the delegate, Megan, and has the following property values:

  - **isRemovable** is set to true, providing Alex the option to cancel the delegation.
  - **isInsideOrganization** is true as only users in the same organization can be delegates.
  - **role** for Megan is `delegateWithPrivateEventAccess`, as set up by Alex.
  - **allowedRoles** includes the role types `delegateWithoutPrivateEventAccess` and `delegateWithPrivateEventAccess` that support delegation.
  - **emailAddress** specifies Megan.

- The second **calendarPermission** object is a default object assigned to "My Organization", and has the following property values:

  - **isRemovable** is set to false, since the primary calendar is always shared with the owner's organization.
  - **isInsideOrganization** is true.
  - **role** is `freeBusyRead`, the default setting for "My Organization".
  - **emailAddress** specifies the **name** sub-property as "My Organization"; **address** for "My Organization" is by default null.

**Microsoft Graph permissions**

Use the least privileged delegated or application permission, `Calendars.Read`, as appropriate, for this operation. For more information, see [calendar permissions](permissions-reference.md#calendars-permissions).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_calendarperms"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/AlexW@contoso.OnMicrosoft.com/calendar/calendarPermissions
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calendarperms-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calendarperms-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-calendarperms-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


<!-- {
  "blockType": "response",
  "name": "get_calendarperms",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendarPermission",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/calendar/calendarPermissions",
    "value": [
        {
            "id": "L289RXhjaGFuZ2VMYWJTWVnYW5C",
            "isRemovable": true,
            "isInsideOrganization": true,
            "role": "delegateWithPrivateEventAccess",
            "allowedRoles": [
                "freeBusyRead",
                "limitedRead",
                "read",
                "write",
                "delegateWithoutPrivateEventAccess",
                "delegateWithPrivateEventAccess"
            ],
            "emailAddress": {
                "name": "Megan Bowen",
                "address": "MeganB@contoso.OnMicrosoft.com"
            }
        },
        {
            "id": "RGVmYXVsdA==",
            "isRemovable": false,
            "isInsideOrganization": true,
            "role": "freeBusyRead",
            "allowedRoles": [
                "none",
                "freeBusyRead",
                "limitedRead",
                "read",
                "write"
            ],
            "emailAddress": {
                "name": "My Organization"
            }
        }
    ]
}
```


### Calendar owner: Update permissions for an existing sharee or delegate on a calendar

With the consent of Alex or administrator, you can update the permissions assigned to an existing sharee or delegate (specified by the **role** property), as long as the new permissions are supported by those **allowedRoles** set up initially for the sharee or delegate for that calendar. 

Aside from the **role** property, you cannot update other properties of an existing sharee or delegate. Changing the **emailAddress** property value requires deleting the sharee or delegate and setting up a new instance of **calendarPermission** again.

The example in this section updates the **role** property, changing the permission of an existing sharee, Adele, from `read` to `write` for the custom calendar "Kids parties".

**Microsoft Graph permissions**

Use the least privileged delegated or application permission, `Calendars.ReadWrite`, as appropriate, for this operation. For more information, see [calendar permissions](permissions-reference.md#calendars-permissions).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_calendarperm",
  "sampleKeys": ["AlexW@contoso.OnMicrosoft.com", "AAMkADAwAABf02bAAAA=", "L289RXhjaGFuZ2VMYWJQWRlbGVW"]
}-->
```http
PATCH https://graph.microsoft.com/beta/users/AlexW@contoso.OnMicrosoft.com/calendars/AAMkADAwAABf02bAAAA=/calendarPermissions/L289RXhjaGFuZ2VMYWJQWRlbGVW
Content-type: application/json

{
  "role": "write"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-calendarperm-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-calendarperm-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-calendarperm-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


<!-- {
  "blockType": "response",
  "name": "update_calendarperm",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendarPermission"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/calendars('AAMkADAwAABf02bAAAA%3D')/calendarPermissions/$entity",
    "id": "L289RXhjaGFuZ2VMYWJQWRlbGVW",
    "isRemovable": true,
    "isInsideOrganization": true,
    "role": "write",
    "allowedRoles": [
        "freeBusyRead",
        "limitedRead",
        "read",
        "write"
    ],
    "emailAddress": {
        "name": "Adele Vance",
        "address": "AdeleV@contoso.OnMicrosoft.com"
    }
}
```


## Get properties of a shared or delegated calendar

In this section:

- [Calendar owner: Get properties of a shared or delegated calendar](#calendar-owner-get-properties-of-a-shared-or-delegated-calendar)
- [Sharee or delegate: Get properties of shared or delegated calendar](#sharee-or-delegate-get-properties-of-shared-or-delegated-calendar)

Recalling in this example, Alex has delegated his primary calendar and given the delegate, Megan Bowen, the permission to view calendar items that are marked private.
This section shows the properties of the delegated calendar, first from the perspective of and with the consent of the owner, Alex, and then from the perspective of and with the consent of the delegate, Megan. Consent from the administrator also works for each case.

### Calendar owner: Get properties of a shared or delegated calendar

The example in this section gets the properties of the primary calendar from the perspective of the owner, Alex. 

Note the following properties on Alex' behalf:

- **canShare** is true as Alex is the owner.
- **canViewPrivateItems** is true since Alex is the owner.
- **isShared** is set to true, as Alex has set up a delegate for this calendar.
- **isSharedWithMe** is always false for the calendar owner.
- **owner** shows Alex as the owner.

**Microsoft Graph permissions**

Use the least privileged delegated or application permission, `Calendars.Read`, as appropriate, for this operation. For more information, see [calendar permissions](permissions-reference.md#calendars-permissions).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_calendar_props_owner",
  "sampleKeys": ["AlexW@contoso.OnMicrosoft.com"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/AlexW@contoso.OnMicrosoft.com/calendar
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calendar-props-owner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calendar-props-owner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-calendar-props-owner-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


<!-- {
  "blockType": "response",
  "name": "get_calendar_props_owner",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendar"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/calendar/$entity",
    "id": "AQMkADAw7QAAAJfygAAAA==",
    "name": "Calendar",
    "color": "auto",
    "hexColor": "",
    "changeKey": "NEXywgsVrkeNsFsyVyRrtAAAAAACOg==",
    "canShare": true,
    "canViewPrivateItems": true,
    "isShared": true,
    "isSharedWithMe": false,
    "canEdit": true,
    "allowedOnlineMeetingProviders": [
        "teamsForBusiness"
    ],
    "defaultOnlineMeetingProvider": "teamsForBusiness",
    "isTallyingResponses": true,
    "isRemovable": false,
    "owner": {
        "name": "Alex Wilber",
        "address": "AlexW@contoso.OnMicrosoft.com"
    }
}
```


### Sharee or delegate: Get properties of shared or delegated calendar

The example in this section gets the properties of the same calendar from the perspective of the delegate, Megan. 

Note the following properties:

- **name** of the calendar is by default the owner's display name. In this case, it's "Alex Wilber", since this is Alex' calendar delegated to Megan. 
- **canShare** is false, since Megan is not the owner of this calendar.
- **canViewPrivateItems** is true for the delegate Megan, as set up by Alex. For a sharee that is not a delegate, this property is always false.
- **isShared** is false. This property indicates only to a calendar _owner_ whether the calendar has been shared or delegated.
- **isSharedWithMe** property is true, since Megan is a delegate.
- **canEdit** is true, since delegates, including Megan, have write access.
- **owner** is set to Alex.

> [!NOTE] 
> A sharee or delegate can customize only the **name** property of a shared/delegated calendar. The update is visible only to themselves; the calendar owner does not see such calendar name changes.

**Microsoft Graph permissions**

Use the least privileged delegated permission, `Calendars.Read.Shared`, or application permission, `Calendars.Read`, as appropriate, for this operation. For more information, see [calendar permissions](permissions-reference.md#calendars-permissions).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_calendar_props_delegate",
  "sampleKeys": ["meganb@contoso.OnMicrosoft.com", "AAMkADlAABhbftjAAA="]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/meganb@contoso.OnMicrosoft.com/calendars/AAMkADlAABhbftjAAA=
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-calendar-props-delegate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-calendar-props-delegate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-calendar-props-delegate-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


<!-- {
  "blockType": "response",
  "name": "get_calendar_props_delegate",
  "truncated": true,
  "@odata.type": "microsoft.graph.calendar"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('meganb%40contoso.OnMicrosoft.com')/calendars/$entity",
    "id": "AAMkADlAABhbftjAAA=",
    "name": "Alex Wilber",
    "color": "auto",
    "hexColor": "",
    "changeKey": "E6LznKWmX0KTsAD9qRJjeAAAYWo3EQ==",
    "canShare": false,
    "canViewPrivateItems": true,
    "isShared": false,
    "isSharedWithMe": true,
    "canEdit": true,
    "allowedOnlineMeetingProviders": [
        "teamsForBusiness"
    ],
    "defaultOnlineMeetingProvider": "teamsForBusiness",
    "isTallyingResponses": true,
    "isRemovable": true,
    "owner": {
        "name": "Alex Wilber",
        "address": "AlexW@contoso.OnMicrosoft.com"
    }
}
```


## Get or set mailbox setting to receive meeting requests and responses

In this section:

- [Get delegation delivery setting for a user's mailbox](#get-delegation-delivery-setting-for-a-users-mailbox)
- [Set delegation delivery setting for a user's mailbox](#set-delegation-delivery-setting-for-a-users-mailbox)

Depending on the level of delegation a calendar owner prefers, the owner can specify who should receive meeting requests and responses to manage meetings on the calendar. 

Programmatically, you can get or set the **delegateMeetingMessageDeliveryOptions** property of the calendar owner's [mailboxSettings](/graph/api/resources/mailboxsettings) to specify to whom Outlook should direct [eventMessageRequest](/graph/api/resources/eventmessagerequest) and [eventMessageResponse](/graph/api/resources/eventmessageresponse) instances:

- `sendToDelegateOnly`

    Outlook to direct **eventMessageRequest** and **eventMessageResponse** instances to only delegates. This is the default setting. The owner can see responses to a meeting or respond to an invitation through the corresponding **event** in the delegated calendar.
- `sendToDelegateAndInformationToPrincipal`

    Outlook to direct **eventMessageRequest** and **eventMessageResponse** instances to delegates and the calendar owner. Only the delegates see the option to accept or decline a meeting request, and the notification sent to the owner appears like a normal email message. The owner can still respond to the meeting by opening the **event** in the delegated calendar and responding.
- `sendToDelegateAndPrincipal`

    Outlook to direct **eventMessageRequest** and **eventMessageResponse** instances to delegates and the calendar owner, either of whom can respond to the meeting request.

This is a mailbox-wide setting, so the same setting applies to all delegates of the mailbox owner.

### Get delegation delivery setting for a user's mailbox

The example in this section gets the **mailboxSettings** of a calendar owner who lets Outlook direct meeting requests and responses to only calendar delegates; that is, **delegateMeetingMessageDeliveryOptions** is set to `sendToDelegateOnly`.

**Microsoft Graph permissions**

Use the least privileged delegated or application permission, `MailboxSettings.Read`, as appropriate, for this operation. For more information about mailbox permissions, see [mail permissions](permissions-reference.md#mail-permissions).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_mailboxsettings_owner",
  "sampleKeys": ["AlexW@contoso.OnMicrosoft.com"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/AlexW@contoso.OnMicrosoft.com/mailboxsettings
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-mailboxsettings-owner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-mailboxsettings-owner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-mailboxsettings-owner-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


<!-- {
  "blockType": "response",
  "name": "get_mailboxsettings_owner",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxSettings"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/mailboxSettings",
    "archiveFolder": "AQMkADAwAGVQAAAKfowAAAA==",
    "timeZone": "Pacific Standard Time",
    "delegateMeetingMessageDeliveryOptions": "sendToDelegateOnly",
    "dateFormat": "M/d/yyyy",
    "timeFormat": "h:mm tt",
    "automaticRepliesSetting": {
        "status": "disabled",
        "externalAudience": "all",
        "internalReplyMessage": "",
        "externalReplyMessage": "",
        "scheduledStartDateTime": {
            "dateTime": "2019-12-24T05:00:00.0000000",
            "timeZone": "UTC"
        },
        "scheduledEndDateTime": {
            "dateTime": "2019-12-25T05:00:00.0000000",
            "timeZone": "UTC"
        }
    },
    "language": {
        "locale": "en-US",
        "displayName": "English (United States)"
    },
    "workingHours": {
        "daysOfWeek": [
            "monday",
            "tuesday",
            "wednesday",
            "thursday",
            "friday"
        ],
        "startTime": "08:00:00.0000000",
        "endTime": "17:00:00.0000000",
        "timeZone": {
            "name": "Pacific Standard Time"
        }
    }
}
```

### Set delegation delivery setting for a user's mailbox

The example in this section updates the **delegateMeetingMessageDeliveryOptions** property to `sendToDelegateAndPrincipal`, to have Outlook direct meeting requests and responses of the delegated calendar to all delegates and the owner.

**Microsoft Graph permissions**

Use the least privileged delegated or application permission, `MailboxSettings.ReadWrite`, as appropriate, for this operation. For more information about mailbox permissions, see [mail permissions](permissions-reference.md#mail-permissions).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "patch_mailboxsettings_owner",
  "sampleKeys": ["AlexW@contoso.OnMicrosoft.com"]
}-->
```http
PATCH https://graph.microsoft.com/beta/users/AlexW@contoso.OnMicrosoft.com/mailboxsettings
Content-type: application/json

{
  "delegateMeetingMessageDeliveryOptions": "sendToDelegateAndPrincipal"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/patch-mailboxsettings-owner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/patch-mailboxsettings-owner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/patch-mailboxsettings-owner-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


<!-- {
  "blockType": "response",
  "name": "patch_mailboxsettings_owner",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxSettings"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/mailboxSettings",
    "delegateMeetingMessageDeliveryOptions": "sendToDelegateAndPrincipal"
}
```


## Delete a sharee or delegate of a calendar

In the example below, Alex deletes Megan as a sharee of the "Kids parties" calendar.

**Microsoft Graph permissions**

Use the least privileged delegated or application permission, `Calendars.ReadWrite`, as appropriate, for this operation. For more information, see [calendar permissions](permissions-reference.md#calendars-permissions).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_sharee",
  "sampleKeys": ["AlexW@contoso.OnMicrosoft.com", "AAMkADAwAABf02bAAAA=", "L289RXhjaGFuZ2VMYWJTWVnYW5C"]
}-->
```http
DELETE https://graph.microsoft.com/beta/users/AlexW@contoso.OnMicrosoft.com/calendars/AAMkADAwAABf02bAAAA=/calendarPermissions/L289RXhjaGFuZ2VMYWJTWVnYW5C
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-sharee-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-sharee-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/delete-sharee-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


<!-- {
  "blockType": "response",
  "name": "delete_sharee",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```


## Next steps

Find out more about:

- How the Outlook clients support sharing and delegating calendars:
  - [Share an Outlook calendar with other people](https://support.office.com/article/share-an-outlook-calendar-with-other-people-353ed2c1-3ec5-449d-8c73-6931a0adab88
)
  - [Allow someone else to manage your mail and calendar as a delegate](https://support.office.com/article/allow-someone-else-to-manage-your-mail-and-calendar-41c40c04-3bd1-4d22-963a-28eafec25926)
  - [Share your calendar in Outlook on the web](https://support.office.com/article/share-your-calendar-in-outlook-on-the-web-7ecef8ae-139c-40d9-bae2-a23977ee58d5)
  - [Calendar delegation in Outlook on the web](https://support.office.com/article/calendar-delegation-in-outlook-on-the-web-532e6410-ee80-42b5-9b1b-a09345ccef1b
)
- [Get Outlook events in a shared or delegated calendar](outlook-get-shared-events-calendars.md)
- [Create Outlook events in a shared or delegated calendar](outlook-create-event-in-shared-delegated-calendar.md)
- [Why integrate with Outlook calendar](outlook-calendar-concept-overview.md)
- The [calendar API](/graph/api/resources/calendar) in Microsoft Graph beta.
