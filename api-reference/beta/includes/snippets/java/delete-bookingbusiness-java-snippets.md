---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.bookingBusinesses("fabrikam@M365B489948.onmicrosoft.com")
	.buildRequest()
	.delete();

```