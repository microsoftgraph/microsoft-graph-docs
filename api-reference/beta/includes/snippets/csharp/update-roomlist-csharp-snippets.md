---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var place = new Roomlist
{
	DisplayName = "Building 1",
	Phone = "555-555-0100"
};

await graphClient.Places["Building1RroomList@contoso.onmicrosoft.com"]
	.Request()
	.UpdateAsync(place);

```