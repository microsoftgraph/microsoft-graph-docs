# educationSynchronizationConnectionSettings resource type

Represents the provider connection settings. This allows the system to know how to connect to the provider APIs. 

> **Note:** This complex type is abstract. Refer to the specific types of connection settings listed.

## Derived types
| Type | Description | 
|:-|:-|
| [**educationSynchronizationOAuth1ConnectionSettings**](educationSynchronizationOAuth1ConnectionSettings.md) | Use this type to provide OAuth1 connection settings |
| [**educationSynchronizationOAuth2ClientCredentialsConnectionSettings**](educationSynchronizationOAuth2ClientCredentialsConnectionSettings.md) | Use this type to provide OAuth2 Client Credentials Grant connection settings |

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **clientId** | String |  Client id used to connect to the provider |
| **clientSecret** | String |  Client secret to authenticate connection to the provider |