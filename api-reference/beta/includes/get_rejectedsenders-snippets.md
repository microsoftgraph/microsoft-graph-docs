#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var rejectedSenders = await graphClient.Groups.Groups.RejectedSenders.Request().GetAsync();

```