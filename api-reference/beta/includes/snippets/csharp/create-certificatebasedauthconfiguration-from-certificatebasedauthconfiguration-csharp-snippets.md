---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var certificateBasedAuthConfiguration = new CertificateBasedAuthConfiguration
{
	CertificateAuthorities = new List<CertificateAuthority>()
	{
		new CertificateAuthority
		{
			IsRootAuthority = true,
			Certificate = "Binary"
		}
	}
};

await graphClient.Organization["{id}"].CertificateBasedAuthConfiguration
	.Request()
	.AddAsync(certificateBasedAuthConfiguration);

```