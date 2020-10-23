---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profileCardProperty = new ProfileCardProperty
{
	Annotations = new List<ProfileCardAnnotation>()
	{
		new ProfileCardAnnotation
		{
			Localizations = new List<DisplayNameLocalization>()
			{
				new DisplayNameLocalization
				{
					LanguageTag = "no-NB",
					DisplayName = "Kostnads Senter"
				}
			}
		}
	}
};

await graphClient.Organization["{organizationId}"].Settings.ProfileCardProperties["CustomAttribute1"]
	.Request()
	.UpdateAsync(profileCardProperty);

```