#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var rejectedSenders = await graphClient.Groups.Groups.RejectedSenders.Request().GetAsync();
*** 

```