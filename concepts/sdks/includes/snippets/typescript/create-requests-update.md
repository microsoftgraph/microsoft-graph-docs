```typescript
const team = {
  funSettings: {
    allowGiphy: true,
    giphyContentRating: "strict"
  }
};

let res = await client.api('/teams/{id}')
	.update(team);
```
