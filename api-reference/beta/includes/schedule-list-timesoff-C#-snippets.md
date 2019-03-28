
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var timesOff = await graphClient.Teams["{teamId}"].Schedule.TimesOff
	.Request()
	.Filter("sharedTimeOff/startDateTime ge 2019-03-11T00:00:00.000Z and sharedTimeOff/endDateTime le 2019-03-18T00:00:00.000Z and draftTimeOff/startDateTime ge 2019-03-11T00:00:00.000Z and draftTimeOff/endDateTime le 2019-03-18T00:00:00.000Z")
	.GetAsync();

```