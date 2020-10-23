---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var id = "5793aa3b-cca9-4794-679a240f8b58";

var credentials = new List<Credential>()
{
	new Credential
	{
		FieldId = "param_username",
		Value = "myusername",
		Type = "username"
	},
	new Credential
	{
		FieldId = "param_password",
		Value = "pa$$w0rd",
		Type = "password"
	}
};

await graphClient.ServicePrincipals["{id}"]
	.UpdatePasswordSingleSignOnCredentials(id,credentials)
	.Request()
	.PostAsync();

```