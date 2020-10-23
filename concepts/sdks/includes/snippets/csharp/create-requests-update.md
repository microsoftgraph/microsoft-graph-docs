<!-- markdownlint-disable MD041 -->

```csharp
// PATCH https://graph.microsoft.com/v1.0/teams/{team-id}

var team = new Team
{
    FunSettings = new TeamFunSettings
    {
        AllowGiphy = true,
        GiphyContentRating = GiphyRatingType.Strict
    }
};

var teamId = "71766077-aacc-470a-be5e-ba47db3b2e88";

await graphClient.Teams[teamId]
    .Request()
    .UpdateAsync(team);
```
