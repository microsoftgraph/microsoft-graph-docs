---
title: "Create unmanagedDeviceDiscoveryTask"
description: "Create a new unmanagedDeviceDiscoveryTask object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create unmanagedDeviceDiscoveryTask

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceAppManagement/deviceAppManagementTasks
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the unmanagedDeviceDiscoveryTask object.

The following table shows the properties that are required when you create the unmanagedDeviceDiscoveryTask.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The entity key. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|displayName|String|The name. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|description|String|The description. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|createdDateTime|DateTimeOffset|The created date. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|dueDateTime|DateTimeOffset|The due date. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|category|[deviceAppManagementTaskCategory](../resources/intune-partnerintegration-deviceappmanagementtaskcategory.md)|The category. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md). Possible values are: `unknown`, `advancedThreatProtection`.|
|priority|[deviceAppManagementTaskPriority](../resources/intune-partnerintegration-deviceappmanagementtaskpriority.md)|The priority. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md). Possible values are: `none`, `high`, `low`.|
|creator|String|The email address of the creator. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|creatorNotes|String|Notes from the creator. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|assignedTo|String|The name or email of the admin this task is assigned to. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md)|
|status|[deviceAppManagementTaskStatus](../resources/intune-partnerintegration-deviceappmanagementtaskstatus.md)|The status. Inherited from [deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md). Possible values are: `unknown`, `pending`, `active`, `completed`, `rejected`.|
|unmanagedDevices|[unmanagedDevice](../resources/intune-partnerintegration-unmanageddevice.md) collection|Unmanaged devices discovered in the network.|



## Response
If successful, this method returns a `201 Created` response code and a [unmanagedDeviceDiscoveryTask](../resources/intune-partnerintegration-unmanageddevicediscoverytask.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceAppManagement/deviceAppManagementTasks
Content-type: application/json
Content-length: 961

{
  "@odata.type": "#microsoft.graph.unmanagedDeviceDiscoveryTask",
  "displayName": "Display Name value",
  "description": "Description value",
  "dueDateTime": "2017-01-01T00:02:18.1994089-08:00",
  "category": "advancedThreatProtection",
  "priority": "high",
  "creator": "Creator value",
  "creatorNotes": "Creator Notes value",
  "assignedTo": "Assigned To value",
  "status": "pending",
  "unmanagedDevices": [
    {
      "@odata.type": "microsoft.graph.unmanagedDevice",
      "os": "Os value",
      "osVersion": "Os Version value",
      "ipAddress": "Ip Address value",
      "deviceName": "Device Name value",
      "macAddress": "Mac Address value",
      "domain": "Domain value",
      "manufacturer": "Manufacturer value",
      "model": "Model value",
      "location": "Location value",
      "lastLoggedOnUser": "Last Logged On User value",
      "lastSeenDateTime": "2017-01-01T00:02:00.1006212-08:00"
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 1069

{
  "@odata.type": "#microsoft.graph.unmanagedDeviceDiscoveryTask",
  "id": "6caa2ba0-2ba0-6caa-a02b-aa6ca02baa6c",
  "displayName": "Display Name value",
  "description": "Description value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "dueDateTime": "2017-01-01T00:02:18.1994089-08:00",
  "category": "advancedThreatProtection",
  "priority": "high",
  "creator": "Creator value",
  "creatorNotes": "Creator Notes value",
  "assignedTo": "Assigned To value",
  "status": "pending",
  "unmanagedDevices": [
    {
      "@odata.type": "microsoft.graph.unmanagedDevice",
      "os": "Os value",
      "osVersion": "Os Version value",
      "ipAddress": "Ip Address value",
      "deviceName": "Device Name value",
      "macAddress": "Mac Address value",
      "domain": "Domain value",
      "manufacturer": "Manufacturer value",
      "model": "Model value",
      "location": "Location value",
      "lastLoggedOnUser": "Last Logged On User value",
      "lastSeenDateTime": "2017-01-01T00:02:00.1006212-08:00"
    }
  ]
}
```




