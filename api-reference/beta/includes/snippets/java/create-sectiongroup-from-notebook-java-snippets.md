---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SectionGroup sectionGroup = new SectionGroup();
sectionGroup.displayName = "Section group name";

graphClient.me().onenote().notebooks("{id}").sectionGroups()
	.buildRequest()
	.post(sectionGroup);

```