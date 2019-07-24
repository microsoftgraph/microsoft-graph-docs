---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Extension extension = new Extension();
extension.additionalDataManager().put("@odata.type", new JsonPrimitive("microsoft.graph.openTypeExtension"));
extension.extensionName = "Com.Contoso.Deal";
extension.companyName = "Alpine Skis";
extension.dealValue = 1010100;
extension.expirationDate = "2015-07-03T13:04:00Z";

graphClient.groups("f5480dfd-7d77-4d0b-ba2e-3391953cc74a").events("AAMkADVl17IsAAA=").extensions()
	.buildRequest()
	.post(extension);

```