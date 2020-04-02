---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreement = new Agreement
{
	DisplayName = "MSGraph Sample",
	IsViewingBeforeAcceptanceRequired = true,
	Files = new List<AgreementFile>()
	{
		new AgreementFile
		{
			FileName = "TOU.pdf",
			Language = "en",
			IsDefault = true,
			FileData = new AgreementFileData
			{
				Data = "SGVsbG8gd29ybGQ="
			}
		}
	}
};

await graphClient.Agreements
	.Request()
	.AddAsync(agreement);

```