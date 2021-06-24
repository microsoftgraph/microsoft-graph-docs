---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserAccountInformation userAccountInformation = new UserAccountInformation();
userAccountInformation.allowedAudiences = EnumSet.of(AllowedAudiences.ORGANIZATION);
userAccountInformation.countryCode = "NO";

graphClient.me().profile().account()
	.buildRequest()
	.post(userAccountInformation);

```