---
title: "linkedResource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# linkedResource resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List linkedResources](../api/todotask-list-linkedresources.md)|[linkedResource](../resources/linkedresource.md) collection|Get the linkedResources from the linkedResources navigation property.|
|[Create linkedResources](../api/todotask-post-linkedresources.md)|[linkedResource](../resources/linkedresource.md)|Create a new linkedResources object.|
|[Update linkedResources](../api/todotask-update-linkedresources.md)|[linkedResource](../resources/linkedresource.md)|Update the properties of a linkedResources object with the given id.|
|[Get linkedResources](../api/todotask-get-linkedresource.md)|[linkedResource](../resources/linkedresource.md)|Read the properties and relationships of [linkedResource](../resources/linkedresource.md) object with the given id.|
|[Delete linkedResources](../api/todotask-delete-linkedresources.md)|None|Delete a [linkedResource](../resources/linkedresource.md) object with the given id.|
|[List linkedResources](../api/linkedresource-list.md)|[linkedResource](../resources/linkedresource.md) collection|Get a list of the [linkedResource](../resources/linkedresource.md) objects and their properties.|
|[Create linkedResource](../api/linkedresource-post-linkedresources.md)|[linkedResource](../resources/linkedresource.md)|Create a new [linkedResource](../resources/linkedresource.md) object.|
|[Get linkedResource](../api/linkedresource-get.md)|[linkedResource](../resources/linkedresource.md)|Read the properties and relationships of a [linkedResource](../resources/linkedresource.md) object.|
|[Update linkedResource](../api/linkedresource-update.md)|[linkedResource](../resources/linkedresource.md)|Update the properties of a [linkedResource](../resources/linkedresource.md) object.|
|[Delete linkedResource](../api/linkedresource-delete.md)|None|Deletes a [linkedResource](../resources/linkedresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationName|String|Field indicating app name of the source that is sending the linked entity|
|displayName|String|Field indicating title of the linked entity.|
|externalId|String|Id of the object that is associated with this task on the third-party/partner system|
|id|String|Server generated Id for the linked entity Inherited from [entity](../resources/entity.md)|
|webUrl|String|Deeplink to the linked entity|

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
  "id": "681ca85b-1780-4839-82d9-1b3b139c680c",
  "webUrl": "https://sampleUrl.com",
  "applicationName": "App Name",
  "displayName": "linkedResource added from MS Graph",
  "externalId": "abcd1234"
}
```

