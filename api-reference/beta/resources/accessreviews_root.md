# Azure AD access reviews

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

You can use [Azure AD access reviews](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview) to configure one-time or recurring access reviews for attestation of user's access rights.

Typical customer scenarios for access reviews of group memberships and application access are:
   
- Customers can review and certify guest user access by using access reviews of their access to applications and memberships of groups. Reviewers can use the insights that are provided to efficiently decide whether guests should have continued access.
      
- Customers can review and certify employee access to applications and group memberships with access reviews.
   
- Customers can collect access review controls into programs that are relevant for your organization to track reviews for compliance or risk-sensitive applications.

There is also a related capability for customers to review and certify the role assignments of administrative users who are assigned to Azure AD roles such as Global Administrator or Azure subscription roles.  This capability is included in [Azure AD Privileged Identity Management](privilegedidentitymanagement_root.md).

Note that the access reviews feature, including the API, is included in Azure AD Premium P2. 

## Methods

Here is the list of methods that are provided by Azure AD access reviews.  

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get accessReview](../api/accessreview_get.md) |	[accessReview](accessreview.md) |	Get an access review with a specific id. |
|[Create accessReview](../api/accessreview_create.md) |	[accessReview](accessreview.md) |	Create a new accessReview. |
|[Delete accessReview](../api/accessreview_delete.md) |	None.	| Delete an accessReview. |
|[Update accessReview](../api/accessreview_update.md) |	[accessReview](accessreview.md)	| Update an accessReview. |
|[List accessReview reviewers](../api/accessreview_listreviewers.md) |		[userIdentity](useridentity.md) collection|	Get the reviewers of an accessReview. |
|[Add accessReview reviewer](../api/accessreview_addreviewer.md) |		None.	|	Add a reviewer to an accessReview. |
|[Remove accessReview reviewer](../api/accessreview_removereviewer.md) | None.	|	Remove a reviewer from an accessReview. |
|[List accessReview decisions](../api/accessreview_listdecisions.md) |		[accessReviewDecision](accessreviewdecision.md) collection|	Get the decisions of an accessReview.|
|[List my accessReview decisions](../api/accessreview_listmydecisions.md) |		[accessReviewDecision](accessreviewdecision.md) collection|	As a reviewer, get my decisions of an accessReview.|
|[Send accessReview reminder](../api/accessreview_sendreminder.md) |		None.	|	Send a reminder to the reviewers of an accessReview. |
|[Stop accessReview](../api/accessreview_stop.md) |		None.	|	Stop an accessReview. |
|[Reset accessReview decisions](../api/accessreview_reset.md) |		None.	|	Reset the decisions in an in-progress accessReview.|
|[Apply accessReview decisions](../api/accessreview_apply.md) |		None.	|	Apply the decisions from a completed accessReview.|
|[List businessFlowTemplates](../api/businessflowtemplate_list.md) | [businessFlowTemplate](businessflowtemplate.md) collection| Get the business flow templates appropriate to access reviews.|
|[Create program](../api/program_create.md) |	[program](program.md)	|	Create a new program.|
|[Delete program](../api/program_delete.md) |	None.	|	Delete a program.|
|[List programs](../api/program_list.md) |	[program](program.md) collection|	Get a collection of all the programs.|
|[List programControls of a program](../api/program_listcontrols.md) |		[programControl](programcontrol.md) collection|	Get a collection of the controls of a program.|
|[Update program](../api/program_update.md) |	[program](program.md)|	Update a program.|
|[Create programControl](../api/programcontrol_create.md) |		[programControl](programcontrol.md)	|	Add a programControl to a program.|
|[Delete programControl](../api/programcontrol_delete.md) |		None.	|	Remove a programControl from a program.|
|[List programControls](../api/programcontrol_list.md) | [programControl](programcontrol.md) collection| List controls across all programs in the tenant.|
|[List programControlTypes](../api/programcontroltype_list.md) | [programControlType](programcontroltype.md) collection| List program control types. |


## See also

- [How an administrator can manage user access with Azure AD access reviews](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-azure-ad-controls-manage-user-access-with-access-reviews)
- [How an administrator can manage guest access with Azure AD access reviews](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-azure-ad-controls-manage-guest-access-with-access-reviews)
- [How an administrator can manage programs and controls for Azure AD access reviews](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-azure-ad-controls-manage-programs-controls)


<!-- {
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
