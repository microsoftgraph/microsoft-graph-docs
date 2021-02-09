---
title: "unifiedGroupSource resource type"
description: "The container for a custodian's group."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# unifiedGroupSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The container for a [custodian's](custodian.md) group.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedGroupSources](../api/custodian-list-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|Get a list of the **unifiedGroupSource** objects and their properties.|
|[Create unifiedGroupSource](../api/custodian-post-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Create a new **unifiedGroupSource** object.|
|[Get unifiedGroupSource](../api/unifiedgroupsource-get.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Read the properties and relationships of a **unifiedGroupSource** object.|
|[Delete unifiedGroupSource](../api/unifiedgroupsource-delete.md)|None|Delete a **unifiedGroupSource** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **unifiedGroupSource**.|
|createdDateTime|DateTimeOffset|The date and time the **unifiedGroupSource** was created.|
|displayName|String|The display name of the unified group - This is the name of the group.|
|id|String|The ID of the **unifiedGroupSource**. This is not the ID of the actual group.|
|includedSources|sourceType|Specifies which sources are included in this group. Possible values are: `mailbox`, `site`.|

### sourceType values

Types of source related to the user. Includes mailbox and site both by default.

|Member|Description|
|:----|-----------|
|mailbox|Represents a mailbox.|
|site|Represents a SharePoint site.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|The group associated with the **unifiedGroupSource**.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedGroupSource",
  "baseType": "microsoft.graph.dataSource",
  "openType": false
}
-->

``` json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/ediscovery/cases('4c8f8f70-7785-4bd4-b296-c98376a2c5e1')/custodians('2192ca408ea2410eba3bec8ae873be6b')/unifiedGroupSources",
    "value": [
        {
            "displayName": "Developers group",
            "createdDateTime": "2020-10-27T15:14:11.0048392Z",
            "id": "33434233-3030-3739-3043-393039324633",
            "includedSources": "mailbox,site",
            "createdBy": {
                "user": {
                    "id": "c1db6f13-332a-4d84-b111-914383ff9fc9",
                    "displayName": null
                }
            }
        }
    ]
}
```
