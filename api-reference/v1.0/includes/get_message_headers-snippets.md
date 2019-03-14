#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Me.Messages["AAMkADhAAAW-VPeAAA="].Request().Select("internetMessageHeaders").GetAsync();

```