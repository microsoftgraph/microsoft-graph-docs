
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Calendar
var calendars = new Calendar
{
	Name = "Volunteer",
};

await graphClient.Me.Calendars
	.Request()
	.AddAsync(calendars);

```