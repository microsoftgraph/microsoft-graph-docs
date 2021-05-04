<!-- markdownlint-disable MD041 -->

```java
// PATCH https://graph.microsoft.com/v1.0/teams/{team-id}

final Team team = new Team();
team.FunSettings = new TeamFunSettings();
team.FunSettings.AllowGiphy = true;
team.FunSettings.GiphyContentRating = GiphyRatingType.STRICT;

final String teamId = "71766077-aacc-470a-be5e-ba47db3b2e88";

graphClient.teams(teamId)
    .buildRequest()
    .patch(team);
```
