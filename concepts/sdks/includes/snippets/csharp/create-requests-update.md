```csharp
GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = new Team
{
	FunSettings = new TeamFunSettings
	{
		AllowGiphy = true,
		GiphyContentRating = GiphyRatingType.Strict
	}
};

await graphClient.Teams["{id}"]
	.Request()
	.UpdateAsync(team);
```