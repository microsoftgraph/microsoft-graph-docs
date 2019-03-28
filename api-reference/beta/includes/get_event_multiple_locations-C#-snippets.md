
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var events = await graphClient.Me.Events["AAMkADAGAADDdm4NAAA="]
	.Request()
	.Select("subject,body,bodyPreview,organizer,attendees,start,end,location,locations")
	.GetAsync();

```