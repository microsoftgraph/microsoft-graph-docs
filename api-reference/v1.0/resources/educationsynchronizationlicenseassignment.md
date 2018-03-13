# educationSynchronizationLicenseAssignment resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the license information to assign to user accounts. The resource will be used to set up license assignments when creating new user accounts.

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **appliesTo** | string | The user role type to assign to license. Possible values are: `student`, `teacher`.         |
| **skuIds** | collection of strings |  Represents the SKU identifiers of the licenses to assign.        |

## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationSynchronizationLicenseAssignment"
}-->

```json
{
    "appliesTo": {"@odata.type": "#microsoft.graph.educationUserRole"},
    "skuIds": ["String"]
}
```
