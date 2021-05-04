---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonCertification personCertification = new PersonCertification();
personCertification.issuingAuthority = "International Academy of Marketing Excellence";
personCertification.issuingCompany = "International Academy of Marketing Excellence";

graphClient.users("{userId}").profile().certifications("{id}")
	.buildRequest()
	.patch(personCertification);

```