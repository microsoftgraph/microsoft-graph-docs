# licenseDetails resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Contains information about a license assigned to a user.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List licenseDetails](../api/user_list_licensedetails.md) | licenseDetails collection |Retrieve a list of licenseDetails objects for a user.|

<!--|[Get licenseDetails](../api/licensedetails_get.md) | licenseDetails |Read properties and relationships of a licenseDetails object.|-->

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| The unique identifier for the license detail object. Read-only, Key, Not nullable |
|servicePlans|[servicePlanInfo](serviceplaninfo.md) collection| Information about the service plans assigned with the license. Read-only, Not nullable |
|skuId|Guid| Unique identifier (GUID) for the service SKU. Equal to the skuId property on the related [SubscribedSku](subscribedsku.md) object. Read-only |
|skuPartNumber|String| Unique SKU display name. Equal to the skuPartNumber on the related [SubscribedSku](subscribedsku.md) object; for example: "AAD_Premium". Read-only |

## Relationships
None

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.licenseDetails"
}-->

```json
{
  "id": "String (identifier)",
  "servicePlans": [{"@odata.type": "microsoft.graph.servicePlanInfo"}],
  "skuId": "Guid",
  "skuPartNumber": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "licenseDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->