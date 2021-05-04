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
			Certificate = Encoding.ASCII.GetBytes("Binary")
		}
	}
};

await graphClient.Organization["{organization-id}"].CertificateBasedAuthConfiguration.References
	.Request()
	.AddAsync(certificateBasedAuthConfiguration);

```