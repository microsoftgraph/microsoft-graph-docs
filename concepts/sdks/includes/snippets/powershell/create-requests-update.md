<!-- markdownlint-disable MD041 -->

```PowerShell
# PATCH https://graph.microsoft.com/v1.0/teams/{team-id}

$teamId = "71766077-aacc-470a-be5e-ba47db3b2e88"

Update-MgTeam -TeamId $teamId -FunSettings @{ AllowGiphy = $true; GiphyContentRating = "strict" }
```
