---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var fieldValueSet = new FieldValueSet
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"Color", "Fuchsia"},
		{"Quantity", "934"}
	}
};

await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{item-id}"].Fields
	.Request()
	.UpdateAsync(fieldValueSet);

```