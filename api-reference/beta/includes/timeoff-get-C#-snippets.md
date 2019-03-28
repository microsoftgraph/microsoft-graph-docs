
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var timesOff = await graphClient.Teams["{teamId}"].Schedule.TimesOff["{timeOffId}"]
	.Request()
	.GetAsync();

```