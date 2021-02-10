---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IUsageRightCollectionPage usageRights = graphClient.devices("{objectId}").usageRights()
	.buildRequest()
	.filter("state in ('active', 'suspended') and serviceIdentifier in ('ABCD')")
	.get();

```