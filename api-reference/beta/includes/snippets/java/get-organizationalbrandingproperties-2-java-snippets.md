---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OrganizationalBranding organizationalBranding = graphClient.organization("d69179bf-f4a4-41a9-a9de-249c0f2efb1d").branding()
	.buildRequest()
	.get();

```