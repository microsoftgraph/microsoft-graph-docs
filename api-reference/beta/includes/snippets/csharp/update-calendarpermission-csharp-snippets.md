---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarPermission = new CalendarPermission
{
	EmailAddress = new EmailAddress
	{
		Name = "My Organization"
	},
	IsRemovable = true,
	IsInsideOrganization = true,
	Role = CalendarRoleType.Write,
	AllowedRoles = new List<CalendarRoleType>()
	{
		CalendarRoleType.None,
		CalendarRoleType.FreeBusyRead,
		CalendarRoleType.LimitedRead,
		CalendarRoleType.Read,
		CalendarRoleType.Write
	},
	Id = "RGVmYXVsdA=="
};

await graphClient.Users["{id}"].Calendar.CalendarPermissions["{id}"]
	.Request()
	.UpdateAsync(calendarPermission);

```