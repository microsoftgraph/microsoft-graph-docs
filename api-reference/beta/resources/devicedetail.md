# deviceDetail resource type
Indicates device details associated with a device used for signing in. Includes information like device browser and  OS info, if device is Azure AD managed.



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|browser|String|Indicates the browser information of the used for signing-in.|
|deviceId|String|Refers to the UniqueID of the device used for signing-in.|
|displayName|String|Refers to the name of the device used for signing-in.|
|isCompliant|Boolean|Indicates whether the device is compliant or not.|
|isManaged|Boolean|Indicates if the device is managed or not.|
|operatingSystem|String|Indicates the OS name and version used for signing-in.|
|trustType|String|Indicates information on whether the signed-in device is Workplace Joined, AzureAD Joined, Domain Joined. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.deviceDetail"
}-->

```json
{
  "browser": "String",
  "deviceId": "String",
  "displayName": "String",
  "isCompliant": true,
  "isManaged": true,
  "operatingSystem": "String",
  "trustType": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "deviceDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->