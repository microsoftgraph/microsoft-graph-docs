---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAuthenticationMethod = new EmailAuthenticationMethod
{
	EmailAddress = "kim@contoso.com"
};

await graphClient.Users["kim@contoso.com"].Authentication.EmailMethods
	.Request()
	.AddAsync(emailAuthenticationMethod);

```