# educationSynchronizationCustomization resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Provides settings for customizing the school data profile synchronization of the resource entities. The customization can be applied to all the entities being synchronized. 

>**Note:** The **synchronizationStartDate** property only applies to the **StudentEnrollment** entity.

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **optionalPropertiesToSync** | collection of string |  The collection of property names to sync. If set to null, all properties will be synchronized.       |
| **synchronizationStartDate** | DateTime |  The date that the synchronization should start. This value should be set to a future date. If set to null, the resource will be synchronized when the profile setup completes. **Note:** This only applies to the **StudentEnrollment** property.      |
|**isSyncDeferred** |Boolean | Indicates whether synchronization of the parent entity is deferred to a later date. |
| **allowDisplayNameUpdate** | Boolean |  Indicates whether the display name of the resource can be overwritten by the sync.         |


## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationSynchronizationCustomization"
}-->

```json
{  
    "optionalPropertiesToSync":["String"],
    "synchronizationStartDate": "DateTimeOffset",
    "isSyncDeferred": "Boolean",
    "allowDisplayNameUpdate": "Boolean"
}
```
