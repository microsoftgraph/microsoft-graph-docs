---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ILicenseDetailsCollectionPage licenseDetails = graphClient.me().licenseDetails()
	.buildRequest()
	.get();

```