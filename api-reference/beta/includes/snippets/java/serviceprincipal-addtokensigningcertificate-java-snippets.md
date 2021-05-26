---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "CN=customDisplayName";

OffsetDateTime endDateTime = OffsetDateTimeSerializer.deserialize("01/25/2024 00:00:00");

graphClient.servicePrincipals("004375c5-6e2e-4dec-95e3-626838cb9f80")
	.addTokenSigningCertificate(ServicePrincipalAddTokenSigningCertificateParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.withEndDateTime(endDateTime)
		.build())
	.buildRequest()
	.post();

```