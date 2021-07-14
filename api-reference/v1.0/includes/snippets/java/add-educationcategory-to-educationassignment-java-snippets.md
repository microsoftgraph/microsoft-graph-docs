---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("acdefc6b-2dc6-4e71-b1e9-6d9810ab1793").assignments("ad8afb28-c138-4ad7-b7f5-a6986c2655a8").categories("ec98f158-341d-4fea-9f8c-14a250d489ac").reference()
	.buildRequest()
	.delete();

```