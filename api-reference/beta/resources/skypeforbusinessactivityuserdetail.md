---
title: "skypeForBusinessActivityUserDetail resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "kszb"
---

# skypeForBusinessActivityUserDetail resource type

Namespace: microsoft.graph

## Properties

| Property                                 | Type              |
| :--------------------------------------- | :---------------- |
| totalPeerToPeerSessionCount              | Int64             |
| totalOrganizedConferenceCount            | Int64             |
| totalParticipatedConferenceCount         | Int64             |
| peerToPeerLastActivityDate               | Date              |
| organizedConferenceLastActivityDate      | Date              |
| participatedConferenceLastActivityDate   | Date              |
| peerToPeerIMCount                        | Int64             |
| peerToPeerAudioCount                     | Int64             |
| peerToPeerAudioMinutes                   | Int64             |
| peerToPeerVideoCount                     | Int64             |
| peerToPeerVideoMinutes                   | Int64             |
| peerToPeerAppSharingCount                | Int64             |
| peerToPeerFileTransferCount              | Int64             |
| organizedConferenceIMCount               | Int64             |
| organizedConferenceAudioVideoCount       | Int64             |
| organizedConferenceAudioVideoMinutes     | Int64             |
| organizedConferenceAppSharingCount       | Int64             |
| organizedConferenceWebCount              | Int64             |
| organizedConferenceDialInOut3rdPartyCount | Int64             |
| organizedConferenceCloudDialInOutMicrosoftCount | Int64             |
| organizedConferenceCloudDialInMicrosoftMinutes | Int64             |
| organizedConferenceCloudDialOutMicrosoftMinutes | Int64             |
| participatedConferenceIMCount           | Int64             |
| participatedConferenceAudioVideoCount   | Int64             |
| participatedConferenceAudioVideoMinutes | Int64             |
| participatedConferenceAppSharingCount   | Int64             |
| participatedConferenceWebCount          | Int64             |
| participatedConferenceDialInOut3rdPartyCount | Int64             |
| reportRefreshDate                        | Date              |
| userPrincipalName                        | String            |
| isDeleted                                | Boolean           |
| deletedDate                              | Date              |
| lastActivityDate                         | Date              |
| assignedProducts                         | String collection |
| reportPeriod                             | String            |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.skypeForBusinessActivityUserDetail"
} -->

```json
{
  "totalPeerToPeerSessionCount": 1024,
  "totalOrganizedConferenceCount": 1024,
  "totalParticipatedConferenceCount": 1024,
  "peerToPeerLastActivityDate": "Date",
  "organizedConferenceLastActivityDate": "Date",
  "participatedConferenceLastActivityDate": "Date",
  "peerToPeerIMCount": 1024,
  "peerToPeerAudioCount": 1024,
  "peerToPeerAudioMinutes": 1024,
  "peerToPeerVideoCount": 1024,
  "peerToPeerVideoMinutes": 1024,
  "peerToPeerAppSharingCount": 1024,
  "peerToPeerFileTransferCount": 1024,
  "organizedConferenceIMCount": 1024,
  "organizedConferenceAudioVideoCount": 1024,
  "organizedConferenceAudioVideoMinutes": 1024,
  "organizedConferenceAppSharingCount": 1024,
  "organizedConferenceWebCount": 1024,
  "organizedConferenceDialInOut3rdPartyCount": 1024,
  "organizedConferenceCloudDialInOutMicrosoftCount": 1024,
  "organizedConferenceCloudDialInMicrosoftMinutes": 1024,
  "organizedConferenceCloudDialOutMicrosoftMinutes": 1024,
  "participatedConferenceIMCount": 1024,
  "participatedConferenceAudioVideoCount": 1024,
  "participatedConferenceAudioVideoMinutes": 1024,
  "participatedConferenceAppSharingCount": 1024,
  "participatedConferenceWebCount": 1024,
  "participatedConferenceDialInOut3rdPartyCount": 1024,
  "reportRefreshDate": "Date",
  "userPrincipalName": "String",
  "isDeleted": true,
  "deletedDate": "Date",
  "lastActivityDate": "Date",
  "assignedProducts": ["String"],
  "reportPeriod": "String"
}
```


