---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdministrativeUnit administrativeUnit = graphClient.education().classes("{educationClassId}").members("{educationUserId}").schools("{educationSchoolId}").administrativeUnit()
	.buildRequest()
	.get();

```