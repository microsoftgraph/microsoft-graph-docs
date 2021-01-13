---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailAuthenticationMethod emailAuthenticationMethod = new EmailAuthenticationMethod();
emailAuthenticationMethod.emailAddress = "kim@contoso.com";

graphClient.users("kim@contoso.com").authentication().emailMethods("3ddfcfc8-9383-446f-83cc-3ab9be4be18f")
	.buildRequest()
	.put(emailAuthenticationMethod);

```