
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var reason = "reason-value";

var duration = "duration-value";

var ticketNumber = "ticketNumber-value";

var ticketSystem = "ticketSystem-value";

await graphClient.PrivilegedRoles["{id}"]
	.selfActivate(reason,duration,ticketNumber,ticketSystem);
	.Request()
	.PostAsync()

```