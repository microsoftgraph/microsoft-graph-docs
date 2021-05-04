<!-- markdownlint-disable MD041 -->

```typescript
//PATCH https://graph.microsoft.com/v1.0/teams/{team-id}

const teamSettings = {
  funSettings: {
    allowGiphy: true,
    giphyContentRating: 'strict'
  }
};

const teamId = '71766077-aacc-470a-be5e-ba47db3b2e88';

let res = await client.api(`/teams/${teamId}`)
  .update(teamSettings);
```
