#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var acceptedSenders = await graphClient.Groups.Groups.AcceptedSenders.Request().GetAsync();
*** 

```