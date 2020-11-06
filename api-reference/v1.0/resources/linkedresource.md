---
title: "linkedResource resource type"
description: "Represents the source of the todoTask"
author: "avijityadav"
localization_priority: Normal
ms.prod: "outlook"
doc_type: resourcePageType
---

# linkedResource resource type

Namespace: microsoft.graph


Represents an item in a partner application related to a [todoTask](./todotask.md). An example is an email from where the task was created. A **linkedResource** object stores information about that source application, and lets you link back to the related item. You can see the **linkedResource** in the task details view, as shown.

![Linked resource in task details pane](/graph/images/todo-linkedresource-taskdetail.png)

Some **linkedResource** objects are not associated with any web URLs, in which case, the **webUrl** property is not required. For example, the linked item can be from a custom business app or native platform app, such as an SMS app on a mobile phone. Here is how a **linkedResource** appears with and without a URL.

![Linked resource with and without URL](/graph/images/todo-linkedresource.png)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List linkedResources](../api/todotask-list-linkedresources.md)|[linkedResource](../resources/linkedresource.md) collection|Get the linkedResources from the linkedResources navigation property.|
|[Create linkedResource](../api/todotask-post-linkedresources.md)|[linkedResource](../resources/linkedresource.md)|Create a new linkedResources object.|
|[Get linkedResource](../api/linkedresource-get.md)|[linkedResource](../resources/linkedresource.md)|Read the properties and relationships of a [linkedResource](../resources/linkedresource.md) object.|
|[Update linkedResource](../api/linkedresource-update.md)|[linkedResource](../resources/linkedresource.md)|Update the properties of a [linkedResource](../resources/linkedresource.md) object.|
|[Delete linkedResource](../api/linkedresource-delete.md)|None|Deletes a [linkedResource](../resources/linkedresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationName|String|Field indicating the app name of the source that is sending the **linkedResource**.|
|displayName|String|Field indicating the title of the **linkedResource**.|
|externalId|String|Id of the object that is associated with this task on the third-party/partner system.|
|id|String|Server generated ID for the **linkedResource**. Inherited from [entity](../resources/entity.md).|
|webUrl|String|Deep link to the **linkedResource**.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.linkedResource",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.linkedResource",
  "id": "String (identifier)",
  "webUrl": "String",
  "applicationName": "String",
  "displayName": "String",
  "externalId": "String"
}
```



