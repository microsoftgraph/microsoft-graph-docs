---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonCertification personCertification = new PersonCertification();
personCertification.certificationId = "KB-1235466333663322";
personCertification.description = "Blackbelt in Marketing - Brand Management";
personCertification.displayName = "Marketing Blackbelt - Brand Management";
personCertification.thumbnailUrl = "https://iame.io/dfhdfdfd334.jpg";
personCertification.webUrl = "https://www.iame.io/blackbelt";

graphClient.me().profile().certifications()
	.buildRequest()
	.post(personCertification);

```