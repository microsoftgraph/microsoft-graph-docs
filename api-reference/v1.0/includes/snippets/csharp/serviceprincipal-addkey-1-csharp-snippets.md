---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var keyCredential = new KeyCredential
{
	Type = "AsymmetricX509Cert",
	Usage = "Verify",
	Key = Encoding.ASCII.GetBytes("MIIDYDCCAki...")
};

PasswordCredential passwordCredential = null;

var proof = "eyJ0eXAiOiJ...";

await graphClient.ServicePrincipals["{servicePrincipal-id}"]
	.AddKey(keyCredential,proof,passwordCredential)
	.Request()
	.PostAsync();

```