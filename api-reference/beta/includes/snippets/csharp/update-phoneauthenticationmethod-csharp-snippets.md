---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var phoneAuthenticationMethod = new PhoneAuthenticationMethod
{
	PhoneNumber = "+1 2065555554",
	PhoneType = AuthenticationPhoneType.Mobile
};

await graphClient.Me.Authentication.PhoneMethods["{phoneAuthenticationMethod-id}"]
	.Request()
	.PutAsync(phoneAuthenticationMethod);

```