#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var acceptedSenders = await graphClient.Groups["{id}"].AcceptedSenders.Request().GetAsync();

```