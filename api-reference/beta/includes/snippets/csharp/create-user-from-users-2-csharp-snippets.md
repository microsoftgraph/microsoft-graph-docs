---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AccountEnabled = true,
	DisplayName = "displayName-value",
	MailNickname = "mailNickname-value",
	UserPrincipalName = "upn-value@tenant-value.onmicrosoft.com",
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