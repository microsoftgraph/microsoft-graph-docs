# report resource type

Represent an Office 365 usage report object. It is a stream, which will return a csv file.


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|Get [ExchangeClientActivity](../api/reportroot_exchangeclientactivity.md)|[Report](report.md)|Get all the reports of ExchangeClientActivity|
|Get [ExchangeUserActivity](../api/reportroot_exchangeuseractivity.md)|[Report](report.md)|Get all the reports of ExchangeUserActivity|
|Get [MailboxStorage](../api/reportroot_mailboxstorage.md)|[Report](report.md)|Get all the reports of MailboxStorage|
|Get [Office365ActiveUsers](../api/reportroot_office365activeusers.md)|[Report](report.md)|Get all the reports of Office365ActiveUsers|
|Get [Office365GroupsActivity](../api/reportroot_office365groupsactivity.md)|[Report](report.md)|Get all the reports of Office365GroupsActivity|
|Get [OfficeActivations](../api/reportroot_officeactivations.md)|[Report](report.md)|Get all the reports of OfficeActivations|
|Get [OneDriveStorage](../api/reportroot_onedrivestorage.md)|[Report](report.md)|Get all the reports of OneDriveStorage|
|Get [OneDriveUserActivity](../api/reportroot_onedriveuseractivity.md)|[Report](report.md)|Get all the reports of OneDriveUserActivity|
|Get [SfbClientActivity](../api/reportroot_sfbclientactivity.md)|[Report](report.md)|Get all the reports of SfbClientActivity|
|Get [SfbOrganizerActivity](../api/reportroot_sfborganizeractivity.md)|[Report](report.md)|Get all the reports of SfbOrganizerActivity|
|Get [SfbP2PActivity](../api/reportroot_sfbp2pactivity.md)|[Report](report.md)|Get all the reports of SfbP2PActivity|
|Get [SfbParticipantActivity](../api/reportroot_sfbparticipantactivity.md)|[Report](report.md)|Get all the reports of SfbParticipantActivity|
|Get [SfbUserActivity](../api/reportroot_sfbuseractivity.md)|[Report](report.md)|Get all the reports of SfbUserActivity|
|Get [SharePointSiteStorage](../api/reportroot_sharepointsitestorage.md)|[Report](report.md)|Get all the reports of SharePointSiteStorage|
|Get [SharePointUserActivity](../api/reportroot_sharepointuseractivity.md)|[Report](report.md)|Get all the reports of SharePointUserActivity|
|Get [YammerClientActivity](../api/reportroot_yammerclientactivity.md)|[Report](report.md)|Get all the reports of YammerClientActivity|
|Get [YammerUserActivity](../api/reportroot_yammeruseractivity.md)|[Report](report.md)|Get all the reports of YammerUserActivity|

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|Stream|Represent a csv stream of Office 365 usage report. Read-only|

### Relationships
None

### CSV representation

Here is a CSV representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.Report"
}-->

```
Column1Name,Column2Name
column1Row0Val,column2Row0Val
column1Row1Val,column2Row1Val
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

