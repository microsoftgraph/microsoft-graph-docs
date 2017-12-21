# educationOneRosterApiDataProvider resource

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Used to set up the school data synchronization profile when the [OneRoster API](https://www.imsglobal.org/activity/onerosterlis) is used as the input source.

Derived from [educationSynchronizationDataProvider](educationsynchronizationdataprovider.md).

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **connectionUrl** | String | The connection URL to the OneRoster instance. |
| **clientId** | String |  The client ID used to connect to the OneRoster provider. |
| **clientSecret** | String |  The client secret to authenticate the connection to the OneRoster instance. |
| **customizations** | [educationSynchronizationCustomizations](educationsynchronizationcustomizations.md) | Optional customization to be applied to the synchronization profile.|

## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationoneRosterApiDataProvider"
}-->

```json
{
    "@odata.type": "#microsoft.graph.educationoneRosterApiDataProvider",
    "connectionUrl": "String",
    "clientId": "String",
    "clientSecret": "String",
    "customizations": { "@odata.type": "microsoft.graph.educationSynchronizationCustomizations" }
}
```
