---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA";

String password = "<password>";

graphClient.identity().apiConnectors("{id}")
	.uploadClientCertificate(IdentityApiConnectorUploadClientCertificateParameterSet
		.newBuilder()
		.withPkcs12Value(pkcs12Value)
		.withPassword(password)
		.build())
	.buildRequest()
	.post();

```