
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of GroupLifecyclePolicy
var groupLifecyclePolicies = new GroupLifecyclePolicy
{
	GroupLifetimeInDays = 100,
	ManagedGroupTypes = "Selected",
	AlternateNotificationEmails = "admin@contoso.com",
};

await graphClient.GroupLifecyclePolicies
	.Request()
	.AddAsync(groupLifecyclePolicies);

```