---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDriveCollectionPage drives = graphClient.me().drives()
	.buildRequest()
	.get();

```