---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OrgContactCollectionPage contacts = graphClient.contacts()
	.buildRequest()
	.get();

```