# userIdentity type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

For the Azure AD [access reviews](accessreviews_root.md), this type represents an Azure AD user identity for a reviewer of an access review.  
In the context of an Azure AD audit log, this represents the user information that initiated or was affected by an audit activity.

This type inherits from [identity](identity.md) and has one additional property, the user principal name of the user.

## Methods

None.  You would include objects of this type in the body of a request when [creating an accessReview](../api/accessreview_create.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| `displayName` | `String` | The identity's display name. Note that this may not always be available or up-to-date.    |
| `id`          | `String` | Unique identifier for the identity.  |
| `ipAddress`| `String`| Indicates the client IP address used by user performing the activity (audit log only).|
| `userPrincipalName`|`String` | The userPrincipalName attribute of the user. |

## Remarks

In some circumstances, the unique identifier for the actor may not be available.
In this case, the **displayName** property for the identity will be returned, but the **id** property will be missing from the resource.

## Relationships

None.

## See also

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get accessReview reviewers](../api/accessreview_listreviewers.md) |		[userIdentity](useridentity.md) collection|	Get the reviewers of an accessReview. |
|[Add accessReview reviewer](../api/accessreview_addreviewer.md) |		None.	|	Add a reviewer to an accessReview. |
|[Remove accessReview reviewer](../api/accessreview_removereviewer.md) | None.	|	Remove a reviewer from an accessReview. |

## JSON representation

Here is a JSON representation of the type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
"displayName", "thumbnails"
  ],
  "@odata.type": "microsoft.graph.userIdentity"
}-->

```json
{
  "displayName": "string",
  "id": "string",
 "userPrincipalName": "String"
}

```

<!-- {
  "type": "#page.annotation",
  "description": "userIdentity type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
