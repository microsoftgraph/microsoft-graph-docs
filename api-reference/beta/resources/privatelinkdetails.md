---
title: "privateLinkDetails resource type"
description: "Provides details about Private Links in your Azure AD tenant"
author: "besiler"
localization_priority: Normal
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# privateLinkDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides details about the Azure Private Link associated with a sign-in event. For more information on Azure Private Link, see [What is Azure Private Link?](/azure/private-link/private-link-overview) 



## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyId|String|The unique identifier for the Private Link policy. |
|policyName|String|The name of the Private Link policy in Azure AD. |
|policyTenantId|String|The tenant identifier of the Azure AD tenant the Private Link policy belongs to.|
|resourceId|String|The Azure Resource Manager (ARM) path for the Private Link policy resource.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.privateLinkDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privateLinkDetails",
  "policyId": "String",
  "policyName": "String",
  "resourceId": "String",
  "policyTenantId": "String"
}
```
