#### Sample Code
# [C#](#tab/Csharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var reminderView = await graphClient.Me.ReminderView().Request().GetAsync();

```