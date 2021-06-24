---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityApiConnector identityApiConnector = new IdentityApiConnector();
identityApiConnector.displayName = "Test API";
identityApiConnector.targetUrl = "https://someotherapi.com/api";
Pkcs12Certificate authenticationConfiguration = new Pkcs12Certificate();
authenticationConfiguration.pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA";
authenticationConfiguration.password = "CertificatePassword";
identityApiConnector.authenticationConfiguration = authenticationConfiguration;

graphClient.identity().apiConnectors()
	.buildRequest()
	.post(identityApiConnector);

```