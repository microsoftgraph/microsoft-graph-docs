---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAuthenticationMethod = new EmailAuthenticationMethod
{
	EmailAddress = "kim@contoso.com"
};

await graphClient.Users["kim@contoso.com"].Authentication.EmailMethods["3ddfcfc8-9383-446f-83cc-3ab9be4be18f"]
	.Request()
	.PutAsync(emailAuthenticationMethod);

```