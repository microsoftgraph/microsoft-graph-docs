# Creating a group with a Microsoft Teams team

Creating a [group](/graph/api/resources/group?view=graph-rest-beta) that includes a [team](/graph/api/resources/team?view=graph-rest-beta) involves two steps: 

- [Create a group](/graph/api/group_post_groups?view=graph-rest-beta) with the right properties.
- [Add a team](/graph/api/team_put_teams?view=graph-rest-beta) to the group.

## Create a group

In order to include a team, you need to set the following property values, as shown in the following example:

- **groupTypes** = { "Unified" } 
- **mailEnabled** = true
- **securityEnabled** = false

```http
POST /groups
{
    "displayName":"Flight 157",
    "mailNickname":"flight157",
    "description":"Everything about flight 157",
    "visibility":"Private",
    "groupTypes":["Unified"],
    "mailEnabled":true,
    "securityEnabled":false,
    "members@odata.bind":[
        "https://graph.microsoft.com/beta/users/bec05f3d-a818-4b58-8c2e-2b4e74b0246d",
        "https://graph.microsoft.com/beta/users/ae67a4f4-2308-4522-9021-9f402ff0fba8",
        "https://graph.microsoft.com/beta/users/eab978dd-35d0-4885-8c46-891b7d618783",
        "https://graph.microsoft.com/beta/users/6a1272b5-f6fc-45c4-95fe-fe7c5a676133"
    ],
    "owners@odata.bind":[
        "https://graph.microsoft.com/beta/users/6a1272b5-f6fc-45c4-95fe-fe7c5a676133",
        "https://graph.microsoft.com/beta/users/eab978dd-35d0-4885-8c46-891b7d618783"
    ]
}
```

The following example shows response. 

>**Note:** The response object shown might be shortened for readability. All the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: xxx
{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups/$entity",
    "id":"b7f968af-ca51-42f6-a77e-82c7147bc8f2"
}
```

## Add a team to the group

Add a team to the group, as shown.

```http
PUT /groups/{id}/team
{ }
```

The following example shows the response. 

>**Note:** The response object shown might be shortened for readability. All the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: xxx
{
    "@odata.context" : "https://graph.microsoft.com/beta/$metadata#teams/$entity",
    "id" : "b7f968af-ca51-42f6-a77e-82c7147bc8f2",
    "webUrl" : "https://example.com",
    "isArchived" : null,
    "memberSettings" : { },
    "guestSettings" : { },
    "messagingSettings" : { },
    "funSettings" : {}
}
```

The created team has the same ID as the group.
