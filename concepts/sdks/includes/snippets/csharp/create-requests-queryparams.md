```csharp
    var queryOptions = new List<QueryOption>()
    {
        new QueryOption("startdate", "2016-12-01T00:00:00Z"),
        new QueryOption("enddate", "2016-12-30T00:00:00Z")
    };
    
    var calendar = await graphClient.Me.CalendarView()
        .Request( queryOptions )
        .GetAsync();
```