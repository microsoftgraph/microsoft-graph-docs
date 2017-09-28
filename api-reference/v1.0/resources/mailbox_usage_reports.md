# Mailbox usage reports

You can get information about users with a user mailbox and the level of activity by each based on the email send and read activity. It also provides information about how much storage has been consumed by each user mailbox, and how many of them are approaching storage quotas.

> **Note:** For details about different report views and names, see [Office 365 Reports - Mailbox usage](https://support.office.com/client/Mailbox-usage-beffbe01-ce2d-4614-9ae5-7898868e2729).

## Reports

| Function                                 | Return Type | Description                              |
| :--------------------------------------- | :---------- | :--------------------------------------- |
| [Get user detail](../api/reportroot_mailboxusageuserdetail.md) | Stream      | Get user detail about mailbox usage.     |
| [Get mailbox counts](../api/reportroot_mailboxusagemailboxcounts.md) | Stream      | Get the total count of user mailbox in your organization, and the total number that are active on any given day of the reporting period. A user mailbox is considered active if it had an email send or read activity. |
| [Get quota mailbox status counts](../api/reportroot_mailboxusagequotamailboxstatuscounts.md) | Stream      | Get the count of user mailboxes in each quota category. |
| [Get storage](../api/reportroot_mailboxusagestorage.md) | Stream      | Get the amount of storage used in your organization. |
