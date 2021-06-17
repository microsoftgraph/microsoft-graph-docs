---
title: "user resource type"
description: "Represents an Azure Active Directory user object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an Azure Active Directory user object.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List users](../api/intune-mam-user-list.md)|[user](../resources/intune-mam-user.md) collection|List properties and relationships of the [user](../resources/intune-mam-user.md) objects.|
|[Get user](../api/intune-mam-user-get.md)|[user](../resources/intune-mam-user.md)|Read properties and relationships of the [user](../resources/intune-mam-user.md) object.|
|[Create user](../api/intune-mam-user-create.md)|[user](../resources/intune-mam-user.md)|Create a new [user](../resources/intune-mam-user.md) object.|
|[Delete user](../api/intune-mam-user-delete.md)|None|Deletes a [user](../resources/intune-mam-user.md).|
|[Update user](../api/intune-mam-user-update.md)|[user](../resources/intune-mam-user.md)|Update the properties of a [user](../resources/intune-mam-user.md) object.|
|[getManagedAppDiagnosticStatuses function](../api/intune-mam-user-getmanagedappdiagnosticstatuses.md)|[managedAppDiagnosticStatus](../resources/intune-mam-managedappdiagnosticstatus.md) collection|Gets diagnostics validation status for a given user.|
|[getManagedAppPolicies function](../api/intune-mam-user-getmanagedapppolicies.md)|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Gets app restrictions for a given user.|
|[wipeManagedAppRegistrationsByDeviceTag action](../api/intune-mam-user-wipemanagedappregistrationsbydevicetag.md)|None|Issues a wipe operation on an app registration with specified device tag.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The user identifier.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|managedAppRegistrations|[managedAppRegistration](../resources/intune-mam-managedappregistration.md) collection|Zero or more managed app registrations that belong to the user.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)"
}
```




