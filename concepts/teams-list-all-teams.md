---
title: "List all teams in Microsoft Teams for an organization"
description: "To list all teams "
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# List all teams in Microsoft Teams for an organization

To list all [teams](/graph/api/resources/team?view=graph-rest-beta) 
in an organization (tenant), you find all groups that have teams, and then get information for each team.

## Get a list of groups

To get a list of all [groups](/graph/api/resources/group?view=graph-rest-beta) in the organization that have teams,
get a [list of all groups](/graph/api/group-list?view=graph-rest-beta) and then in code find the ones that have
a **resourceProvisioningOptions** property that contains "Team".
Since groups are large objects, use $select to only get the properties of the group you care about.

```http
GET /groups?$select=id,resourceProvisioningOptions
```

> **Note**: Certain unused old teams will not have resourceProvisioningOptions set. For details, see [known issues](known-issues.md#missing-teams-in-list-all-teams).

The following is an example of the response. 

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: xxx

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups",
    "value": [
        {
            "id": "00e897b1-70ba-4cb9-9126-fd5f95c4bb78",
            "resourceProvisioningOptions": []
        },
        {
            "id": "00f6e045-f884-4359-a617-d459ee626862",
            "resourceProvisioningOptions": [
                "Team"
            ]
        }
    ]
}
```

## Get a list of groups using beta APIs

Using the beta APIs, you can use $filter to return only the groups that have teams.

```http
GET /groups?$filter=resourceProvisioningOptions/Any(x:x eq 'Team')
```

> **Note**: Filtering groups by resourceProvisioningOptions is only available through the beta endpoint. resourceProvisioningOptions is available in v1.0 and beta.

> **Note**: Certain unused old teams will not be listed. For details, see [known issues](known-issues.md#missing-teams-in-list-all-teams).

The following is an example of the response. 

>**Note:** The response object shown might be shortened for readability. All the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: xxx

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups",
    "value": [
        {
            "id": "02bd9fd6-8f93-4758-87c3-1fb73740a315",
            "description": "Welcome to the HR Taskforce team.",
            "displayName": "HR Taskforce",
            "groupTypes": [
                "Unified"
            ],
            "mailEnabled": true,
            "mailNickname": "HRTaskforce",
            "resourceBehaviorOptions": [],
            "resourceProvisioningOptions": [
                "Team"
            ],
            "securityEnabled": false,
            "visibility": "Private"
        },
        {
            "id": "8090c93e-ba7c-433e-9f39-08c7ba07c0b3",
            "description": "Welcome to the team that we've assembled to launch our product.",
            "displayName": "X1050 Launch Team",
            "groupTypes": [
                "Unified"
            ],
            "mailEnabled": true,
            "mailNickname": "X1050LaunchTeam",
            "resourceBehaviorOptions": [],
            "resourceProvisioningOptions": [
                "Team"
            ],
            "securityEnabled": false,
            "visibility": "Private"
        }
    ]
}
```

## Get team information for a group

To get team information for the team in a particular group, 
call the [get team](/graph/api/team-get?view=graph-rest-beta) API and include the group ID.

```http
GET /teams/{group-id}
```

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.team"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 401

{
  "isArchived" : false,
  "memberSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true,
    "allowAddRemoveApps": true,
    "allowCreateUpdateRemoveTabs": true,
    "allowCreateUpdateRemoveConnectors": true    
  },
  "guestSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true 
  },
  "messagingSettings": {
    "allowUserEditMessages": true,
    "allowUserDeleteMessages": true,
    "allowOwnerDeleteMessages": true,
    "allowTeamMentions": true,
    "allowChannelMentions": true    
  },
  "funSettings": {
    "allowGiphy": true,
    "giphyContentRating": "strict",
    "allowStickersAndMemes": true,
    "allowCustomMemes": true
  }
}
```

## See also

- [List joinedTeams](/graph/api/user-list-joinedteams?view=graph-rest-beta)
- [List groups](/graph/api/group-list?view=graph-rest-beta)
