# educationIdentityMatchingOptions resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Provides a mapping between a source property and a target property for matching user accounts. The source property should exist in the source data. The target property should be a valid property in Azure Active Directory (Azure AD).

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **appliesTo** | string |  The user role type to assign to the license. Possible values are: `student`, `teacher`.      |
| **sourcePropertyName** | string |  The name of the source property, which should be a field name in the source data. This property is case-sensitive.        |
| **targetPropertyName** | string |  The name of the target property, which should be a valid property in Azure AD. This property is case-sensitive.     |
| **targetDomain** | string |  The domain to suffix with the source property to match on the target. If provided as null,  the source property will be used to match with the target property.        |

## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationIdentityMatchingOptions"
}-->

```json
{
    "appliesTo": {"@odata.type": "#microsoft.graph.educationUserRole"},
    "sourcePropertyName": "String",
    "targetPropertyName": "String",
    "targetDomain": "String"
}
```
