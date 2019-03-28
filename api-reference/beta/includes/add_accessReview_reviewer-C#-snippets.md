
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of AccessReviewReviewer
var reviewers = new AccessReviewReviewer
{
	Id = "006111db-0810-4494-a6df-904d368bd81b",
};

await graphClient.AccessReviews["2b83cc42-09db-46f6-8c6e-16fec466a82d"].Reviewers
	.Request()
	.AddAsync(reviewers);

```