---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var publishedResource = new PublishedResource
{
	DisplayName = "New provisioning",
	ResourceName = "domain1.contoso.com"
};

await graphClient.OnPremisesPublishingProfiles["provisioning"].PublishedResources
	.Request()
	.AddAsync(publishedResource);

```