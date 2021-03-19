---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UsageRightCollectionPage usageRights = graphClient.users("{userId}").usageRights()
	.buildRequest()
	.filter("state in ('active', 'suspended') and serviceIdentifier in ('ABCD')")
	.get();

```