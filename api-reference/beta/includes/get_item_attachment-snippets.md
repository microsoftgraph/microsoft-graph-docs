#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var attachments = await graphClient.Me.Messages["AAMkADA1M-zAAA="].Attachments["AAMkADA1M-CJKtzmnlcqVgqI="].Request().GetAsync();

```