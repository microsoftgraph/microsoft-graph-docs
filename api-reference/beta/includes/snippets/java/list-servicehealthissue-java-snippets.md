---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServiceHealthIssueCollectionPage issues = graphClient.admin().serviceAnnouncement().issues()
	.buildRequest()
	.get();

```