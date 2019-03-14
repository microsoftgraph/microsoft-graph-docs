#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var shares = await graphClient.Shares["{shareIdOrEncodedSharingUrl}"].Request().GetAsync();

```