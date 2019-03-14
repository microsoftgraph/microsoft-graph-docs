#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var messages = await graphClient.Me.Messages["AAMkAGVmMDEz"].Request().Select("internetMessageHeaders").GetAsync();

```