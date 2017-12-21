# educationSynchronizationError resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an error during school data profile sync. An unique error will be generated for every entry that fails to synchronize with Azure Active Directory (Azure AD).

## Methods

| Method | Return Type | Description |
|:-|:-|:-|
| [Get synchronization errors](../api/educationsynchronizationerrors_get.md) | **educationSynchronizationError** collection| Returns the list of synchronization errors associated with a profile. |

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **entryType** | string |  represents the sync entity (school, section, student, teacher)         |
| **errorCode** | string |  represents the error code for this error         |
| **errorMessage** | string |  contains a description of the error         |
| **joiningValue** | string |  the unique identifier for the entry         |
| **recordedDateTime** | DateTimeOffset |  the time of occurrence of this error         |

## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationSynchronizationError"
}-->

```json
{
    "entryType": "String",
    "errorCode": "String",
    "errorMessage": "String",
    "joiningValue": "String",
    "recordedDateTime": "DateTimeOffset",
    "reportableIdentifier": "String"
}
```
