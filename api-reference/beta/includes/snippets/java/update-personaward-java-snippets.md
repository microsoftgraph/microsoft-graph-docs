---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAward personAward = new PersonAward();
personAward.issuingAuthority = "International Association of Branding Management";
personAward.thumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg";

graphClient.users("{userId}").profile().awards("{personAwardId}")
	.buildRequest()
	.patch(personAward);

```