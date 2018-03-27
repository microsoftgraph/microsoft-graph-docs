# educationFileSynchronizationVerificationMessage resource type

Represents an error returned to the client in response to a request to [start synchronization](../api/educationsynchronizationprofile_start.md) for CSV-based school data profiles. The resource contains errors that result from the verification. A user must fix the source data before they restart the request to synchronize with Azure Active Directory (Azure AD).

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **type** | string | Type of the message. Possible values are: `error`, `warning`, `information`. | 
| **filename** | string | Source file that contains the error. |
| **description** | string | Detailed information about the message type. |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationFileSynchronizationVerificationMessage"
}-->

```json
{
    "type": "String",
    "fileName": "String",
    "description": "String"
}
```
