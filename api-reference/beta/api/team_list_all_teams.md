# List all teams

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieves all [groups](../resources/group.md) in the organization (tenant) that have corresponding [teams](../resources/team.md). 
Any group that has a team has a resourceProvisioningOptions property that contains "Team", 
so the approach is to get a [list of all groups](group_list.md) where resourceProvisioningOptions contains "Team".

See [list of all groups](group_list.md) for information on permissions and responses.

Note: Teams that were deleted then restored may not be included, Microsoft is working to address this limitation.

Note: The Group.resourceProvisioningOptions can be changed.
Do not add or remove "Team" from that collection, 
otherwise list all teams will return incorrect results.

## Example

#### Request

The following is an example of the request.
```http
GET /groups?$filter=resourceProvisioningOptions/Any(x:x eq 'Team')
```

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. The [default properties](../api/group_get.md#default-properties) will be returned from an actual call.

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
            "visibility": "Private",
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
            "visibility": "Private",
        }
    ]
}
```

## See also
- [List joinedTeams](user_list_joinedteams.md)
- [List groups](group_list.md)
