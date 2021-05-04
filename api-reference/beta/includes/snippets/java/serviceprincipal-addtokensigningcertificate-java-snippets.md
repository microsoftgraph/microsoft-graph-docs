---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "CN=customDisplayName";

OffsetDateTime endDateTime = OffsetDateTimeSerializer.deserialize("01/25/2024 00:00:00");

graphClient.servicePrincipals("7c8d4399-b4bf-413a-8b6a-c577790cae7d")
	.addTokenSigningCertificate(ServicePrincipalAddTokenSigningCertificateParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.withEndDateTime(endDateTime)
		.build())
	.buildRequest()
	.post();

```