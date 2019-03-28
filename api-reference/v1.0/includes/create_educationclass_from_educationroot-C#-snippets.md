
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of EducationClass
var classes = new EducationClass
{
	Description = "Health Level 1",
	ClassCode = "Health 501",
	DisplayName = "Health 1",
	ExternalId = "11019",
	ExternalName = "Health Level 1",
	ExternalSource = "sis",
	MailNickname = "fineartschool.net",
};

await graphClient.Education.Classes
	.Request()
	.AddAsync(classes);

```