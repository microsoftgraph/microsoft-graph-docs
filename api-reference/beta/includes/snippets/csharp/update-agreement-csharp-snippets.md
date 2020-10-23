---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreement = new Agreement
{
	DisplayName = "displayName-value",
	IsViewingBeforeAcceptanceRequired = true
};

await graphClient.Agreements["{id}"]
	.Request()
	.UpdateAsync(agreement);

```