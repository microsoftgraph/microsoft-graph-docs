
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of AdministrativeUnit
var administrativeUnits = new AdministrativeUnit
{
	DisplayName = "Seattle District Technical Schools",
	Description = "Seattle district technical schools administration",
	Visibility = "true",
};

await graphClient.AdministrativeUnits
	.Request()
	.AddAsync(administrativeUnits);

```