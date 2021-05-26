---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSynchronizationProfile educationSynchronizationProfile = graphClient.education().synchronizationProfiles("{id}")
	.buildRequest()
	.get();

```