---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["kim@contoso.com"].Authentication.Fido2Methods["_jpuR-TGZtk6aQCLF3BQjA2"]
	.Request()
	.DeleteAsync();

```