---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreement = new Agreement
{
	DisplayName = "MSGraph Sample",
	IsViewingBeforeAcceptanceRequired = true,
	Files = (IAgreementFilesCollectionPage)new List<AgreementFileLocalization>()
	{
		new AgreementFileLocalization
		{
			FileName = "TOU.pdf",
			Language = "en",
			IsDefault = true,
			FileData = new AgreementFileData
			{
				Data = Encoding.ASCII.GetBytes("SGVsbG8gd29ybGQ=")
			}
		}
	}
};

await graphClient.Agreements
	.Request()
	.AddAsync(agreement);

```