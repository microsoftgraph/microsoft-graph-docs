---
title: "Update deviceAppManagement"
description: "Update the properties of a deviceAppManagement object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceAppManagement

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md) object.
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).  Note that the appropriate permission varies according to the workflow.

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
| Delegated (work or school account) | |
| &nbsp; &nbsp; **Apps**, **books**, **onboarding**, **Partner Integration**, or **Policy Set** | DeviceManagementApps.ReadWrite.All |
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application | |
| &nbsp; &nbsp; **Apps**, **books**, **onboarding**, **Partner Integration**, or **Policy Set** | DeviceManagementApps.ReadWrite.All |
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All |

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceAppManagement
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md) object.

The following table shows the properties that are required when you create the [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|**On-boarding**|
|isEnabledForMicrosoftStoreForBusiness|Boolean|Whether the account is enabled for syncing applications from the Microsoft Store for Business.|
|microsoftStoreForBusinessLanguage|String|The locale information used to sync applications from the Microsoft Store for Business. Cultures that are specific to a country/region. The names of these cultures follow RFC 4646 (Windows Vista and later). The format is <languagecode2>-<country/regioncode2>, where <languagecode2> is a lowercase two-letter code derived from ISO 639-1 and <country/regioncode2> is an uppercase two-letter code derived from ISO 3166. For example, en-US for English (United States) is a specific culture.|
|microsoftStoreForBusinessLastCompletedApplicationSyncTime|DateTimeOffset|The last time an application sync from the Microsoft Store for Business was completed.|
|microsoftStoreForBusinessLastSuccessfulSyncDateTime|DateTimeOffset|The last time the apps from the Microsoft Store for Business were synced successfully for the account.|
|microsoftStoreForBusinessPortalSelection|[microsoftStoreForBusinessPortalSelectionOptions](../resources/intune-onboarding-microsoftstoreforbusinessportalselectionoptions.md)|The end user portal information is used to sync applications from the Microsoft Store for Business to Intune Company Portal. There are three options to pick from \['Company portal only', 'Company portal and private store', 'Private store only'\]. Possible values are: `none`, `companyPortal`, `privateStore`.|

This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

## Response
If successful, this method returns a `200 OK` response code and an updated [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md) object in the response body.

## Example

### Request

Here is an example of the request.

``` http
PATCH https://graph.microsoft.com/beta/deviceAppManagement
Content-type: application/json
Content-length: 2

{}
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 110

{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "bbb801a3-01a3-bbb8-a301-b8bba301b8bb"
}
```










