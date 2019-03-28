
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var skuId = "skuId-value-2";

//create Guid list and populate it
var disabledPlans = new List<Guid>();

var skuIdVar = "skuIdVar-value-1";

//create Guid list and populate it
var disabledPlansVar = new List<Guid>();

//create AssignedLicense list and populate it
var addLicenses = new List<AssignedLicense>();
addLicenses.Add(new AssignedLicense(disabledPlansVar,skuIdVar));
addLicenses.Add(new AssignedLicense(disabledPlans,skuId));

//create AssignedLicense list and populate it
var removeLicenses = new List<AssignedLicense>();

await graphClient.Me
	.assignLicense(addLicenses,removeLicenses);
	.Request()
	.PostAsync()

```