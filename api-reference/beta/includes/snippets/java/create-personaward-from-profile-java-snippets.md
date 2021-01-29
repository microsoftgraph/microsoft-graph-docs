---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAward personAward = new PersonAward();
personAward.description = "Lifetime Achievement award from the International Association of Branding Managers";
personAward.displayName = "Lifetime Achievement Award For Excellence in Branding";
personAward.issuedDate = new DateOnly(1900,1,1);
personAward.issuingAuthority = "International Association of Branding Management";
personAward.thumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg";
personAward.webUrl = "https://www.iabm.io";

graphClient.me().profile().awards()
	.buildRequest()
	.post(personAward);

```