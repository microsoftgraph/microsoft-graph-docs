---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.admin().serviceAnnouncement().issues("MO248163")
	.incidentReport()
	.buildRequest()
	.get();

```