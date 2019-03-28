
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var sectionGroups = await graphClient.Me.Onenote.SectionGroups["{id}"].SectionGroups
	.Request()
	.GetAsync();

```