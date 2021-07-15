---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var assignments = new List<CloudPcUserSettingAssignment>()
{
	new CloudPcUserSettingAssignment
	{
		Id = "b0c2d35f-3385-46c8-a6f5-6c3dfad7708b_64ff06de-9c00-4a5a-98b5-7f5abe26ffff",
		Target = new CloudPcManagementGroupAssignmentTarget
		{
			GroupId = "64ff06de-9c00-4a5a-98b5-7f5abe26ffff"
		}
	}
};

await graphClient.DeviceManagement.VirtualEndpoint.UserSettings["{cloudPcUserSetting-id}"]
	.Assign(assignments)
	.Request()
	.PostAsync();

```