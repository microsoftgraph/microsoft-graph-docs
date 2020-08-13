---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profileCardProperty = new ProfileCardProperty
{
	DirectoryPropertyName = "CustomAttribute1",
	Annotations = new List<ProfileCardAnnotation>()
	{
		new ProfileCardAnnotation
		{
			DisplayName = "Cost Center",
			Localizations = new List<DisplayNameLocalization>()
			{
				new DisplayNameLocalization
				{
					LanguageTag = "ru-RU",
					DisplayName = "центр затрат"
				}
			}
		}
	}
};

await graphClient.Organization["{organizationId}"].Settings.ProfileCardProperties
	.Request()
	.AddAsync(profileCardProperty);

```