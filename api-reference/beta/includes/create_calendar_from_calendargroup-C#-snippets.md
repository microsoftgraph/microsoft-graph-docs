
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of CalendarColor
var color = new CalendarColor
{
};

//create instance of Calendar
var calendars = new Calendar
{
	Name = "name-value",
	Color = color,
};

await graphClient.Me.CalendarGroups["{id}"].Calendars
	.Request()
	.AddAsync(calendars);

```