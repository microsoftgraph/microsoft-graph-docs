#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var contacts = await graphClient.Me.Contacts["AAMkAGI2THk0AAA="].Request().GetAsync();

```