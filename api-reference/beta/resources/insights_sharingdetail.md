# sharingDetail resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Complex type containing properties of [Shared](insights_shared.md) items. 

## JSON representation
Here is a JSON representation of the resource

```json
{
  "sharedDateTime": "dateTimeOffset",
  "sharingSubject": "string",
  "sharingType": "string",
  "sharedBy": "insightIdentity",
  "resourceReference": "resourceReference"
}
```

## Properties

| Property              | Type          | Description  |
| -------------         |-----------    | -------------|
| sharedDateTime      	| DateTimeOffset| The date and time the file was last shared. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `2014-01-01T00:00:00Z`. Read-only.  |
| sharingSubject      	| String	      | The subject with which the document was shared. |
| sharingType     		  | String        | Determines the way the document was shared, can be by a "Link", "Attachment", "Group", "Site".     |
| sharedBy      	      | [insightIdentity](insights_insightidentity.md)	    | The user who shared the document.  |
| sharingReference		  | [resourceReference](insights_resourceReference.md)	    |  |