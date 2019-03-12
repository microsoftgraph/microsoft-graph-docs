#### Sample Code
# [C#](#tab/c-sharp)

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var tasks = await graphClient.Me.Outlook.Tasks.Tasks.Request().GetAsync();
*** 

```