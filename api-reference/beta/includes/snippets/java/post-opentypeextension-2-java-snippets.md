---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Extension extension = new Extension();
extension.additionalDataManager().put("@odata.type", new JsonPrimitive("microsoft.graph.openTypeExtension"));
extension.extensionName = "Com.Contoso.Referral";
extension.companyName = "Wingtip Toys";
extension.dealValue = 500050;
extension.expirationDate = "2015-12-03T10:00:00Z";

graphClient.me().messages("AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===").extensions()
	.buildRequest()
	.post(extension);

```