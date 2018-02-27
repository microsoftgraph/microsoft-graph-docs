# office365ActivationsUserCounts resource type

## Properties

| Property                 | Type   | Description                              |
| :----------------------- | :----- | ---------------------------------------- |
| reportRefreshDate        | Date   | The latest date of the content.          |
| productType              | String | The product type such as "Office 365 ProPlus", "Project Client", or "Visio Pro for Office 365". |
| assigned                 | Int64  | The number of users have been assigned for the product license. |
| activated                | Int64  | The number of users who have activated the product. |
| sharedComputerActivation | Int64  | The number of users who have used the product on a shared computer. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365ActivationsUserCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "productType": "String", 
  "assigned": 1024, 
  "activated": 1024,
  "sharedComputerActivation": 1024
}
```
