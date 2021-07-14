---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = new EducationUser
{
	RelatedContacts = new List<RelatedContact>()
	{
		new RelatedContact
		{
			DisplayName = "Father Time",
			EmailAddress = "father@time.com",
			MobilePhone = "4251231234",
			Relationship = ContactRelationship.Guardian,
			AccessConsent = true
		},
		new RelatedContact
		{
			DisplayName = "Mother Nature",
			EmailAddress = "mother@nature.co.uk",
			MobilePhone = "3251231234",
			Relationship = ContactRelationship.Parent,
			AccessConsent = true
		}
	}
};

await graphClient.Education.Users["{educationUser-id}"]
	.Request()
	.UpdateAsync(educationUser);

```