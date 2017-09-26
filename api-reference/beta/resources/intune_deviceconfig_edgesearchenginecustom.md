# edgeSearchEngineCustom resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Allows IT admins to set a custom default search engine for MDM-Controlled devices.

Inherits from [edgeSearchEngineBase](../resources/intune_deviceconfig_edgesearchenginebase.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|edgeSearchEngineOpenSearchXmlUrl|String|Points to a https link containing the OpenSearch xml file that contains, at minimum, the short name and the URL to the search Engine.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.edgeSearchEngineCustom"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.edgeSearchEngineCustom",
  "edgeSearchEngineOpenSearchXmlUrl": "String"
}
```



