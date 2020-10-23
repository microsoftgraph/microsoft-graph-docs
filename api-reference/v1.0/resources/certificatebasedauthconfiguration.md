---
title: "certificateBasedAuthConfiguration resource type"
description: "Represents a collection of certificate authorities."
localization_priority: Normal
author: "adimitui"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# certificateBasedAuthConfiguration resource type

Namespace: microsoft.graph

Certificate-based authentication enables you to be authenticated by Azure Active Directory with a client certificate on a Windows, Android, or iOS device when connecting your Exchange Online account to:

- Microsoft mobile applications such as Outlook and Word
- Exchange ActiveSync (EAS) clients

Configuring this feature eliminates the need to enter a username and password combination into certain mail and Microsoft Office applications on your mobile device.

Certificate-based authentication configuration is provided through a collection of certificate authorities. The certificate authorities are used to establish a trusted certificate chain which enables clients to be authenticated by Azure Active Directory with a client certificate.

Learn more about [certificate-based authentication in Azure Active Directory](/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List certificateBasedAuthConfiguration](../api/certificatebasedauthconfiguration-list.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | List the properties of the **certificateBasedAuthConfiguration** collection. |
| [Create certificateBasedAuthConfiguration](../api/certificatebasedauthconfiguration-post-certificatebasedauthconfiguration.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | Create a new **certificateBasedAuthConfiguration** object. |
| [Get certificateBasedAuthConfiguration](../api/certificatebasedauthconfiguration-get.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | Read the properties of a **certificateBasedAuthConfiguration** object. |
| [Delete certificateBasedAuthConfiguration](../api/certificatebasedauthconfiguration-delete.md) | None | Delete a **certificateBasedAuthConfiguration** object. |

>[!NOTE]
>Updating **certificateBasedAuthConfiguration** is not supported. To change a **certificateBasedAuthConfiguration**, first delete and then create a new **certificateBasedAuthConfiguration**.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|certificateAuthorities|[certificateAuthority](certificateauthority.md) collection|Collection of certificate authorities which creates a trusted certificate chain.|
|id|String|The unique identifier of the certificate based auth configuration. Read-only.|

## Relationships

None,

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.certificateBasedAuthConfiguration",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "certificateAuthorities": {"@odata.type": "collection(microsoft.graph.certificateAuthority)"},
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "certificateBasedAuthConfiguration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
