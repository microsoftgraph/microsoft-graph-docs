# educationSynchronizationConnectionSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the provider connection settings. This allows the system to know how to connect to the provider APIs. 

> **Note:** This complex type is abstract. Refer to the specific types of connection settings listed.

## Derived types
| Type | Description | 
|:-|:-|
| [**educationSynchronizationOAuth1ConnectionSettings**](educationsynchronizationoauth1connectionsettings.md) | Use this type to provide OAuth1 connection settings. |
| [**educationSynchronizationOAuth2ClientCredentialsConnectionSettings**](educationsynchronizationoauth2clientcredentialsconnectionsettings.md) | Use this type to provide OAuth2 Client Credentials Grant connection settings. |

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **clientId** | String |  Client ID used to connect to the provider. |
| **clientSecret** | String |  Client secret to authenticate the connection to the provider. |