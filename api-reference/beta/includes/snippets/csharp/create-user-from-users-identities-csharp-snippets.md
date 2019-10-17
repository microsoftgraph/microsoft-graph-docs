---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	DisplayName = "John Smith",
	Identities = new List<ObjectIdentity>()
	{
		new ObjectIdentity
		{
			SignInType = "userName",
			Issuer = "contoso.onmicrosoft.com",
			IssuerAssignedId = "johnsmith"
		},
		new ObjectIdentity
		{
			SignInType = "federated",
			Issuer = "facebook.com",
			IssuerAssignedId = "5eecb0cd"
		}
	},
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = true,
		Password = "password-value"
	}
};

await graphClient.Users
	.Request()
	.AddAsync(user);

```