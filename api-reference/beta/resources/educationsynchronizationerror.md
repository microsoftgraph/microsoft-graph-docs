# educationSynchronizationError resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents an error during school data profile validation and/or sync. A unique error is generated for every entry that fails to validate and/or synchronize with Azure Active Directory (Azure AD).

## Methods

| Method | Return Type | Description |
|:-|:-|:-|
| [Get synchronization errors](../api/educationsynchronizationerrors_get.md) | **educationSynchronizationError** collection| Returns the list of synchronization errors associated with a profile. |

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **entryType** | string |  Represents the sync entity (school, section, student, teacher).       |
| **errorCode** | string |  Represents the error code for this error.         |
| **errorMessage** | string |  Contains a description of the error.        |
| **joiningValue** | string |  The unique identifier for the entry.         |
| **recordedDateTime** | DateTimeOffset | The time of occurrence of this error.         |
| **reportableIdentifier** | string | The identifier of this error entry.       |

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
