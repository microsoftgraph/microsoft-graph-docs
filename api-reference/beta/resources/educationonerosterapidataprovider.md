# educationOneRosterApiDataProvider resource

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Used to set up the school data synchronization profile when the [OneRoster API](https://www.imsglobal.org/activity/onerosterlis) is used as the input source.

Derived from [educationSynchronizationDataProvider](educationsynchronizationdataprovider.md).

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **connectionUrl** | String | The connection URL to the OneRoster instance. |
| **schoolsIds** | String collection |  The list of school sourcedIds to sync. |
| **providerName** | String | The OneRoster Service Provider name as defined by the [OneRoster specification](https://www.imsglobal.org/oneroster-v11-final-best-practice-and-implementation-guide#AppA). |
| **connectionSettings** | [educationSynchronizationConnectionSettings](educationsynchronizationconnectionsettings.md) | Connection settings for the OneRoster instance. Should be of type [educationSynchronizationOAuth1ConnectionSettings](educationsynchronizationoauth1connectionsettings.md) or [educationSynchronizationOAuth2ClientCredentialsConnectionSettings](educationsynchronizationoauth2clientcredentialsconnectionsettings.md). |
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
    "providerName": "String",
    "schoolsIds": [
        "String"
    ],
    "connectionSettings": {
        "@odata.type": "#microsoft.graph.educationSynchronizationOAuth1ConnectionSettings",
        "clientId": "String",
        "clientSecret": "String",
    },
    "customizations": { "@odata.type": "microsoft.graph.educationSynchronizationCustomizations" }
}
```
