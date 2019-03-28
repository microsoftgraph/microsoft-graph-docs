
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var sections = await graphClient.Me.Onenote.SectionGroups["{id}"].Sections
	.Request()
	.GetAsync();

```