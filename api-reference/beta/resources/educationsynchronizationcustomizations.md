# educationSynchronizationCustomizations resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Contains the list of entities to sync and their [customizations](educationsynchronizationcustomization.md), if any.

> **Note:** Customization of properties to sync does not apply to the **studentEnrollment** and **teacherRoster** entities.

This resource is member of the following data providers:

* [educationCsvDataProvider](educationcsvdataprovider.md)
* [educationPowerSchoolDataProvider](educationpowerschooldataprovider.md)

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **school** | [educationSynchronizationCustomization](educationsynchronizationcustomization.md) |  Customization for a school entity.        |
| **section** | [educationSynchronizationCustomization](educationsynchronizationcustomization.md) |  Customization for a section entity.         |
| **student** | [educationSynchronizationCustomization](educationsynchronizationcustomization.md) |  Customization for a student entity.         |
| **teacher** | [educationSynchronizationCustomization](educationsynchronizationcustomization.md) |  Customization for a teacher entity.         |
| **studentEnrollment** | [educationSynchronizationCustomization](educationsynchronizationcustomization.md) |  Customization for student enrollment.           |
| **teacherRoster** | [educationSynchronizationCustomization](educationsynchronizationcustomization.md) |       Customization for a teacher roster.    |

## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "#microsoft.graph.educationSynchronizationCustomizations"
}-->

```json
{
  "school": {"@odata.type": "microsoft.graph.educationSynchronizationCustomization"},
  "section": {"@odata.type": "microsoft.graph.educationSynchronizationCustomization"},
  "student": {"@odata.type": "microsoft.graph.educationSynchronizationCustomization"},
  "teacher": {"@odata.type": "microsoft.graph.educationSynchronizationCustomization"},
  "studentEnrollment": {"@odata.type": "microsoft.graph.educationSynchronizationCustomization"},
  "teacherRoster": {"@odata.type": "microsoft.graph.educationSynchronizationCustomization"}
}
```
