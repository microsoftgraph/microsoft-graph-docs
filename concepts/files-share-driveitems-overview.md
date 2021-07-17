---
title: "Share files and folders in OneDrive and SharePoint"
description: "Use the Microsoft Graph API to set permissions for users to share files and folders in OneDrive Personal, OneDrive for Business, and SharePoint."
author: "JeremyKelley"
localization_priority: Priority
ms.prod: "sharepoint"
---

# Share files and folders in OneDrive and SharePoint

Use the Microsoft Graph API to set permissions for users to share files and folders in OneDrive Personal, OneDrive for Business, and SharePoint. There are two ways to set sharing permissions:
- Use the _link_ facet of the [permission](/graph/api/resources/permission) resource to share a file or folder ([driveItem](/graph/api/resources/driveitem)). The **permission** resource defines a [sharingLink](/graph/api/resources/sharinglink) for the **driveItem**, providing a unique token enabling user access to the item by clicking a link.
- Use the _invitation_ facet of the **permission** resource, defining a [sharingInvitation](/graph/api/resources/sharinginvitation) for the **driveItem**. The **sharingInvitation** provides specific users or groups access to the item. You can optionally send an email to notify them of the sharing.

In this article
- [Sharing items using a link facet](#sharing-items-using-a-link-facet)
  - [Permission defining a sharingLink resource](#permission-defining-a-sharinglink-resource)
  - [APIs and use cases](#apis-and-use-cases)
  - [Examples](#examples)
- [Sharing items using an invitation facet](#sharing-items-using-an-invitation-facet)
  - [Permission defining a sharingInvitation resource](#permission-defining-a-sharinginvitation-resource)
  - [APIs and use cases](#apis-and-use-cases-1)
  - [Example](#example)

## Sharing items using a link facet

Using the link facet involves creating a [sharingLink](/graph/api/resources/sharinglink) resource as part of the **permission**. 

### Permission defining a sharingLink resource
**sharingLink** contains a unique URL that makes it easy to share an item with multiple users at once. You can [create a link](/graph/api/driveitem-createlink) that works for:
- Anyone using the link, without requiring them to sign in. 
- Anyone signed into a specific organization.(*)
- One or more specified recipients.(*)

(*) denotes support for a **driveItem** in OneDrive for Business or SharePoint only.
 
The following properties of **permission** are set specifically for the link facet:
- The **link** property containing a **sharingLink** resource, detailing the [type](/graph/api/resources/sharinglink#type-options) and [scope](/graph/api/resources/sharinglink#scope-options) of access, the URL to open the shared item on the OneDrive site, and other sharing information.
- The **shareId** property containing a unique token to [get](/graph/api/shares-get) the [shared item](/graph/api/resources/shareddriveitem).
- The **expirationDateTime** property that can be set if the **sharingLink** is for anyone. 

### APIs and use cases
1. Use the [createLink](/graph/api/driveitem-createlink) action to create a permission that contains a sharing link specifying a scope for anyone (`anonymous`), or anyone in an organization ("organization`). Anyone within the specified scope can access the shared item using the resultant **sharingLink**.
2. As an alternative to step #1, provide specific recipients in the initial [createLink](/graph/api/driveitem-createlink) action, or in a [grant](/graph/api/permission-grant) action for an existing sharing link. 
   - Granting additional users access to an existing sharing link that is already in use by other users doesn't modify any existing permissions on the link.
   - Successful requests set the recipients in the **grantedToIdentities** property of the **permission**. 
3. [Get the permission](/graph/api/permission-get), including the **sharedId** property which contains a unique access token.
4. [Get the shared item](/graph/api/shares-get) by passing the unique access token as a parameter. A successful `GET` operation returns a [sharedDriveItem](/graph/api/resources/shareddriveitem) resource.
5. As an alternative to steps #3 and #4, [encode](/graph/api/shares-get#encoding-sharing-urls) the **webUrl** of the **sharingLink** and provide it as a parameter to [get the shared item](/graph/api/shares-get).
6. For a **sharingLink** that can be used by anyone, if needed, you can [update](/graph/api/permission-update) the **expirationDateTime** of the permission.
7. If necessary, [revoke](/graph/api/permission-revokegrants) the grant on a **sharingLink** (preview).

### Examples 
Here are some examples of **permission** resources that include a **sharingLink**:
- [Link for read access](#link-for-read-access)
- [Link for read/write access](#link-for-readwrite-access)
- [Link with existing access](#link-with-existing-access)
- [Link for specific people](#link-for-specific-people)

These examples show creating permissions that contain a **sharingLink**: 
- [Create company sharable links](#create-company-sharable-links)
- [Create embeddable links](#create-embeddable-links)


#### Link for read access

The following permission specifies a link that provides read-only access to anyone with the link.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-view-link" } -->

```json
{
  "id": "1",
  "roles": ["read"],
  "link": {
    "scope": "anonymous",
    "type": "view",
    "webUrl": "https://onedrive.live.com/redir?resid=5D33DD65C6932946!70859&authkey=!AL7N1QAfSWcjNU8&ithint=folder%2cgif",
    "application": { "id": "1234", "displayName": "Sample Application" }
  },
  "shareId": "!LKj1lkdlals90j1nlkascl",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

#### Link for read/write access

The following permission specifies a link that provides read and write access to anyone in the organization with the link.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-edit-link" } -->

```json
{
  "id": "2ceefb3g32hh",
  "roles": ["write"],
  "link": {
    "scope": "organization",
    "type": "edit",
    "webUrl": "https://contoso.sharepoint.com/:w:/t/design/fj277ghautbb422707565gnvg23",
    "application": { "id": "1234", "displayName": "Sample Application" }
  },
  "shareId": "!LKj1lkdlals90j1nlkascl",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

#### Link with existing access

The following permission specifies a link that does not grant any additional privileges to the user.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-existing-link" } -->

```json
{
  "id": "00000000-0000-0000-0000-000000000000",
  "roles": ["read"],
  "link": {
    "scope": "existingAccess",
    "type": "view",
    "webUrl": "https://contoso.sharepoint.com/:w:/t/design/Shared%20Documents/SampleDoc.docx?d=w12345",
  },
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

#### Link for specific people

The following permission specifies a link that provides read and write access to the specific people in the `grantedToIdentities` collection.

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-people-link" } -->

```json
{
  "id": "3",
  "grantedToIdentities": [
    {
       "user": {
        "id": "35fij1974gb8832",
        "displayName": "Misty Suarez"
      }
    },
    {
       "user": {
        "id": "9397721fh4hgh73",
        "displayName": "Judith Clemons"
      }
    }
  ],
  "roles": ["write"],
  "link": {
    "webUrl": "https://contoso.sharepoint.com/:w:/t/design/a577ghg9hgh737613bmbjf839026561fmzhsr85ng9f3hjck2t5s",
    "application": { "id": "1234", "displayName": "Sample Application" }
  },
  "shareId": "!LKj1lkdlals90j1nlkascl",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

#### Create company sharable links

OneDrive for Business and SharePoint support company sharable links.
These are similar to anonymous links, except they work for only members of the owning organization.
To create a company sharable link, use the **scope** parameter with a value of `organization`.

##### Request


<!-- { "blockType": "request", "name": "create-link-scoped", "scopes": "files.readwrite service.sharepoint" } -->

```http
POST /me/drive/items/{item-id}/createLink
Content-Type: application/json

{
  "type": "edit",
  "scope": "organization"
}
```



##### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.permission" } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["write"],
  "link": {
    "type": "edit",
    "scope": "organization",
    "webUrl": "https://contoso-my.sharepoint.com/personal/ellen_contoso_com/...",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  }
}
```

#### Create embeddable links

When using the `embed` link type, the webUrl returned can be embedded in an `<iframe>` HTML element.
When an embed link is created the `webHtml` property contains the HTML code for an `<iframe>` to host the content.

**Note:** Embed links are only supported for OneDrive personal.

##### Request


<!-- { "blockType": "request", "name": "create-embedded-link", "scopes": "files.readwrite service.onedrive" } -->

```http
POST /me/drive/items/{item-id}/createLink
Content-Type: application/json

{
  "type": "embed"
}
```

##### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.permission" } -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "123ABC",
  "roles": ["read"],
  "link": {
    "type": "embed",
    "webHtml": "<IFRAME src=\"https://onedrive.live.com/...\"></IFRAME>",
    "webUrl": "https://onedive.live.com/...",
    "application": {
      "id": "1234",
      "displayName": "Sample Application"
    },
  }
}
```


## Sharing items using an invitation facet

Using the invitation facet of a **permission** involves scoping the permission to specific users or groups to access a shared file or folder. 

### Permission defining a sharingInvitation resource
A **permission** that uses the invitation facet specifies a [sharingInvitation](/graph/api/resources/sharinginvitation) resource. **sharingInvitation** identifies a sharing recipient by email address, and whether the recipient must sign in to access the shared item.

The following properties of **permission** are set specifically for the invitation facet:
- The **invitation** property containing a **sharingInvitation** resource, describing the recipient's email address and sign-in requirement to access the shared item.
- The **grantedTo** property specifying the user and application for this permission. For more information about populating this property, see [Returning grantedTo property](#returning-grantedto-property).
- The **expirationDateTime** property specifies when the permission expires for the recipient.

Optionally you can specify in the **permission** resource to send an email or post to notify the recipient of the sharing. The notification includes a URL for the recipient to redeem the sharing.

### Returning grantedTo property 

When creating a **permission**, if the **invitation** property contains an email address that doesn't match a known account, OneDrive doesn't set the **grantedTo** property:  

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-invite-email" } -->

```json
{
  "id": "1",
  "roles": ["write"],
  "invitation": {
    "email": "jd@fabrikam.com",
    "signInRequired": true
  },
  "shareId": "FWxc1lasfdbEAGM5fI7B67aB5ZMPDMmQ11U",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```


OneDrive sets the **grantedTo** property once the recipient clicks the specified URL and signs in to redeem the sharing:

<!-- {"blockType": "example", "@odata.type": "microsoft.graph.permission", "name": "permission-invite-redeemed" } -->

```json
{
  "id": "1",
  "roles": ["write"],
  "grantedTo": {
    "user": {
      "id": "5D33DD65C6932946",
      "displayName": "John Doe"
    }
  },
  "invitation": {
    "email": "jd@fabrikam.com",
    "signInRequired": true
  },
  "shareId": "FWxc1lasfdbEAGM5fI7B67aB5ZMPDMmQ11U",
  "expirationDateTime": "0001-01-01T00:00:00Z"
}
```

### APIs and use cases
1. Use the [invite](/graph/api/driveitem-invite) action and set the `recipients` parameter to create a permission for each specified user to share access to a **driveItem**. While each permission corresponds to only one user, the **invite** action can set a collection of permissions for users who share the same file or folder.
2. As an option to step #1, set the `setInvitation` parameter to true to notify users of the sharing. The notification is an email or post that contains a URL to redeem the sharing.
3. Upon successfully creating a permission, the **grantedTo** and **invitation** properties specify information of the corresponding user who has been granted the permission.
4. [Get the permission properties](/graph/api/permission-get) including **grantedTo**, **invitation**, and any **shareId** and **expirationDateTime**.
5. If needed, [update](/graph/api/permission-update) the **roles** property (`read` or `write`) allowed for the specified recipient in a **permission**.

### Example

The following example creates a permission for a user, Alex Wilbur, who has the email address "alexw@contoso.com". The [invite](/graph/api/driveitem-invite) action sends a message about the file being collaborated on. 
The invitation grants Alex read-write access to the file.

<!-- { 
  "blockType": "request", 
  "sampleKeys": ["01CN7N3O44OHRLOHT755H2VH2W6JC57XZW"],
  "name": "send-sharing-invite"
} -->

```http
POST /me/drive/items/01CN7N3O44OHRLOHT755H2VH2W6JC57XZW/invite
Content-type: application/json

{
  "recipients": [
    {
      "email": "alexw@contoso.com"
    }
  ],
  "message": "Here's the file that we're collaborating on.",
  "requireSignIn": true,
  "sendInvitation": true,
  "roles": [ "write" ],
  "password": "password123",
  "expirationDateTime": "2021-07-15T14:00:00.000Z"
}
```

<!-- {
  "blockType": "response",
  "name": "send-sharing-invite",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.permission)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "grantedTo": {
        "user": {
          "displayName": "Alex Wilbur",
          "id": "42F177F1-22C0-4BE3-900D-4507125C5C20"
        }
      },
      "hasPassword": true,
      "id": "CCFC7CA3-7A19-4D57-8CEF-149DB9DDFA62",
      "invitation": {
        "email": "alexw@contoso.com",
        "signInRequired": true
      },
      "roles": [ "write" ],
      "expirationDateTime": "2021-07-15T14:00:00.000Z"
    }
  ]
}
```

## Next steps

Find out more about:

- [Why integrate with OneDrive file storage](onedrive-concept-overview.md)
- [Why integrate with SharePoint sites and lists](sharepoint-concept-overview.md)
- [OneDrive files API overview](/graph/api/resources/onedrive)
- [SharePoint sites and lists API overview](/graph/api/resources/sharepoint)