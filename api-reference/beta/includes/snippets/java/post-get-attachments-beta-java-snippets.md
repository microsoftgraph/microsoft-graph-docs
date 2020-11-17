---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAttachmentCollectionPage attachments = graphClient.groups("1848753d-185d-4c08-a4e4-6ee40521d115").threads("AAQkADJfolA==").posts("AAMkADJ-aHAAA=").attachments()
	.buildRequest()
	.get();

```