---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onenoteSection = new OnenoteSection
{
	DisplayName = "Section name"
};

await graphClient.Me.Onenote.Notebooks["{id}"].Sections
	.Request()
	.AddAsync(onenoteSection);

```