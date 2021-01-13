---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ProjectParticipation projectParticipation = new ProjectParticipation();
projectParticipation.allowedAudiences = EnumSet.of(AllowedAudiences.ORGANIZATION);
CompanyDetail client = new CompanyDetail();
client.department = "Corporate Marketing";
client.webUrl = "https://www.contoso.com";
projectParticipation.client = client;

graphClient.me().profile().projects("{id}")
	.buildRequest()
	.patch(projectParticipation);

```