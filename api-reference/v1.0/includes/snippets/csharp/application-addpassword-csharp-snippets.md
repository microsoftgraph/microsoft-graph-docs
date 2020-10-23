---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var passwordCredential = new PasswordCredential
{
	DisplayName = "Password friendly name"
};

await graphClient.Applications["{id}"]
	.AddPassword(passwordCredential)
	.Request()
	.PostAsync();

```