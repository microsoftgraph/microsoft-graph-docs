<!-- markdownlint-disable MD041 -->

```java
//GET https://graph.microsoft.com/v1.0/me/calendarView

final List<QueryOption> queryOptions = new ArrayList<>()
{
    new QueryOption("startdate", "2020-12-01T00:00:00Z"),
    new QueryOption("enddate", "2020-12-30T00:00:00Z")
};

final IEventCollectionPage calendar = graphClient.me().calendarView()
    .buildRequest(queryOptions)
    .get();
```
