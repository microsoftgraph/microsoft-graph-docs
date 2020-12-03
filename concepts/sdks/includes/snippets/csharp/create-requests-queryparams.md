<!-- markdownlint-disable MD041 -->

```csharp
//GET https://graph.microsoft.com/v1.0/me/calendarView

var queryOptions = new List<QueryOption>()
{
    new QueryOption("startdate", "2020-12-01T00:00:00Z"),
    new QueryOption("enddate", "2020-12-30T00:00:00Z")
};

var calendar = await graphClient.Me.CalendarView()
    .Request(queryOptions)
    .GetAsync();
```
