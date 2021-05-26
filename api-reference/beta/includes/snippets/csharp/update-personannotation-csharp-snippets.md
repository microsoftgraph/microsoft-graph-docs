---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAnnotation = new PersonAnnotation
{
	AllowedAudiences = AllowedAudiences.Organization
};

await graphClient.Users["{user-id}"].Profile.Notes["{personAnnotation-id}"]
	.Request()
	.UpdateAsync(personAnnotation);

```