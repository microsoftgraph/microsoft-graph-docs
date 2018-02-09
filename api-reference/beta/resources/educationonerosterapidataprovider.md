# educationOneRosterApiDataProvider resource

Used to set up the school data synchronization profile when the [OneRoster API](https://www.imsglobal.org/activity/onerosterlis) is used as the input source.

Derived from [educationSynchronizationDataProvider](educationsynchronizationdataprovider.md).

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **connectionUrl** | String | The connection URL to the OneRoster instance. |
| **schoolsIds** | String collection |  The list of school sourcedIds to sync. |
| **providerName** | String | The OneRoster Service Provider name as defined by the [OneRoster specification](https://www.imsglobal.org/oneroster-v11-final-best-practice-and-implementation-guide#AppA). |
| **connectionSettings** | [educationSynchronizationConnectionSettings](educationSynchronizationConnectionSettings.md) | Connection settings for the OneRoster instance. Should be of type [educationSynchronizationOAuth1ConnectionSettings](educationSynchronizationOAuth1ConnectionSettings.md) or [educationSynchronizationOAuth2ClientCredentialsConnectionSettings](educationSynchronizationOAuth2ClientCredentialsConnectionSettings.md) |
| **customizations** | [educationSynchronizationCustomizations](educationsynchronizationcustomizations.md) | Optional customization to be applied to the synchronization profile.|

## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationoneRosterApiDataProvider"
}-->

```json
"dataProvider": {
    "@odata.type": "#microsoft.graph.educationoneRosterApiDataProvider",
    "connectionUrl": "String",
    "providerName": "String"
    "schoolsIds": [
        "String"
    ]
    "connectionSettings": {
        "@odata.type": "#microsoft.graph.educationSynchronizationOAuth1ConnectionSettings",
        "clientId": "String",
    "clientSecret": "String",
        "clientSecret": "String"
    },
    "customizations": { "@odata.type": "microsoft.graph.educationSynchronizationCustomizations" }
}
```
