---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkTagCollectionPage tags = graphClient.teams("53c53217-fe77-4383-bc5a-ed4937a1aecd").tags()
	.buildRequest()
	.get();

```