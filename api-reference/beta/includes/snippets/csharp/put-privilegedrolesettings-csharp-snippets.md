---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleSettings = new PrivilegedRoleSettings
{
	Id = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
	ElevationDuration = "PT8H",
	NotificationToUserOnElevation = false,
	TicketingInfoOnElevation = true,
	MfaOnElevation = false,
	MaxElavationDuration = "PT0S",
	MinElevationDuration = "PT0S",
	LastGlobalAdmin = false,
	IsMfaOnElevationConfigurable = true,
	ApprovalOnElevation = false,
	ApproverIds = new List<String>()
	{
		"e2b2a2fb-13d7-495c-adc9-941fe966793f",
		"22770e3f-b9b4-418e-9dea-d0e3d2f275dd"
	}
};

await graphClient.PrivilegedRoles["{id}"].Settings
	.Request()
	.PutAsync(privilegedRoleSettings);

```