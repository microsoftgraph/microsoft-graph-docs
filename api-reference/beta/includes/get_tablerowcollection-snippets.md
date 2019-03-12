#### Sample Code
#sample-code 

```C#

GraphServiceClient graphClient = new GraphServiceClient();
var rows = await graphClient.Me.Drive.Items.Items.Workbook.Tables.Tables.Rows.Request().GetAsync();
*** 

```