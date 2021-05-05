---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OrgContactDeltaCollectionPage delta = graphClient.contacts()
	.delta()
	.buildRequest()
	.select("displayName,jobTitle,mail")
	.get();

```