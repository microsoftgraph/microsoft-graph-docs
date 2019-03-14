#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var participants = await graphClient.App.Calls["57DAB8B1894C409AB240BD8BEAE78896"].Participants.Request().GetAsync();

```