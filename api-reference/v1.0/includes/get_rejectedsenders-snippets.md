#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var rejectedSenders = await graphClient.Groups["{id}"].RejectedSenders.Request().GetAsync();

```