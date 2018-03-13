## educationIdentityCreationConfiguration resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Defines the settings on creation of school data profile identities. These identities include students and teachers. Based on these settings, the users will be created in the directory.

> **Note:** If you have directory sync turned on to sync between on-premises Active Directory and Azure Active Directory (Azure AD), use the [educationIdentityMatchingConfiguration](educationidentitymatchingconfiguration.md) resource instead.

Derived from [educationIdentitySynchronizationConfiguration](educationIdentitySynchronizationConfiguration.md).

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **userDomains** | [educationIdentityDomain](educationidentitydomain.md) collection |  Sets the list of domains to use per user type.  |


## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationIdentityCreationConfiguration"
}-->

```json
{
    "@odata.type": "#microsoft.graph.educationIdentityCreationConfiguration",
    "userDomains": [
        {
            "@odata.type": "#microsoft.graph.educationIdentityDomain",
        }
    ]
}
```