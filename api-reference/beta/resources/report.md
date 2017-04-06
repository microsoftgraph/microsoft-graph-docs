# report resource type

Represents an Office 365 usage report object. It is a stream, which will return a CSV file.

## Methods

|Method|Return Type|Description|
|:---------------|:--------|:----------|
|Get [EmailAppUsage](../api/reportroot_emailappusage.md) report|[Report](report.md)|Get all the reports of EmailAppUsage|
|Get [EmailActivity](../api/reportroot_emailactivity.md) report|[Report](report.md)|Get all the reports of EmailActivity|
|Get [MailboxUsage](../api/reportroot_mailboxusage.md) report|[Report](report.md)|Get all the reports of MailboxUsage|
|Get [Office365ActiveUsers](../api/reportroot_office365activeusers.md) report|[Report](report.md)|Get all the reports of Office365ActiveUsers|
|Get [Office365GroupsActivity](../api/reportroot_office365groupsactivity.md) report|[Report](report.md)|Get all the reports of Office365GroupsActivity|
|Get [Office365Activations](../api/reportroot_office365activations.md) report|[Report](report.md)|Get all the reports of Office365Activations|
|Get [OneDriveUsage](../api/reportroot_onedriveusage.md) report|[Report](report.md)|Get all the reports of OneDriveUsage|
|Get [OneDriveActivity](../api/reportroot_onedriveactivity.md) report|[Report](report.md)|Get all the reports of OneDriveActivity|
|Get [SfbDeviceUsage](../api/reportroot_sfbdeviceusage.md) report|[Report](report.md)|Get all the reports of SfbDeviceUsage|
|Get [SfbOrganizerActivity](../api/reportroot_sfborganizeractivity.md) report|[Report](report.md)|Get all the reports of SfbOrganizerActivity|
|Get [SfbP2PActivity](../api/reportroot_sfbp2pactivity.md) report|[Report](report.md)|Get all the reports of SfbP2PActivity|
|Get [SfbParticipantActivity](../api/reportroot_sfbparticipantactivity.md) report|[Report](report.md)|Get all the reports of SfbParticipantActivity|
|Get [SfbActivity](../api/reportroot_sfbactivity.md) report|[Report](report.md)|Get all the reports of SfbActivity|
|Get [SharePointSiteUsage](../api/reportroot_sharepointsiteusage.md) report|[Report](report.md)|Get all the reports of SharePointSiteUsage|
|Get [SharePointActivity](../api/reportroot_sharepointactivity.md) report|[Report](report.md)|Get all the reports of SharePointActivity|
|Get [YammerDeviceUsage](../api/reportroot_yammerdeviceusage.md) report|[Report](report.md)|Get all the reports of YammerDeviceUsage|
|Get [YammerActivity](../api/reportroot_yammeractivity.md) report|[Report](report.md)|Get all the reports of YammerActivity|

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|content|Stream|Represent a csv stream of Office 365 usage report. Read-only|

## Relationships

None

### CSV representation

Here is a CSV representation of the "Users" view of report Office365 Active Users.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.Report"
}-->

```csv
Data as of,Office 365,Exchange,OneDrive,SharePoint,Skype For Business,Yammer
2017-02-15,2052,1928,767,1262,1505,195
2017-02-16,2065,1934,738,1263,1499,189
2017-02-17,2051,1925,727,1247,1451,247
2017-02-18,2023,1893,653,1167,1429,197
2017-02-19,1779,1635,275,636,573,112
2017-02-20,1405,1257,152,409,124,68
2017-02-21,1617,1478,656,1187,1370,109
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Report resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->