---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Extension extension = graphClient.groups("f5480dfd-7d77-4d0b-ba2e-3391953cc74a").events("AAMkADVl17IsAAA=").extensions("Com.Contoso.Deal")
	.buildRequest()
	.get();

```