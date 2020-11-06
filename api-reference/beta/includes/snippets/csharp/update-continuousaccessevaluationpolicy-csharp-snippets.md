---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var continuousAccessEvaluationPolicy = new ContinuousAccessEvaluationPolicy
{
	Users = new List<String>()
	{
		"88139f01-1f8d-4c06-ad74-a2544cee9aee"
	},
	Groups = new List<String>()
	{
		"9972fb3f-7a40-49f5-85f6-129d9dfbd47a",
		"ea178055-4713-4d9a-a06c-ff17466b7e77"
	}
};

await graphClient.Identity.ContinuousAccessEvaluationPolicy
	.Request()
	.UpdateAsync(continuousAccessEvaluationPolicy);

```