
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of OnenoteSection
var sections = new OnenoteSection
{
	DisplayName = "Section name",
};

await graphClient.Me.Onenote.SectionGroups["{id}"].Sections
	.Request()
	.AddAsync(sections);

```