---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groups = await graphClient.Groups
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Filter("hasMembersWithLicenseErrors+eq+true,")
	.Select("id,displayName")
	.GetAsync();

```