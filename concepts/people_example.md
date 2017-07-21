# Retrieve the most relevant people to you

Discovering who is relevant to you is a valuable insight. Microsoft Graph applications can use the People API to retrieve the most relevant people to a user. Along with generating this insight, the People API also provides fuzzy matching search support as well as retrieving the list of relevant users to another user you in the signed-in user's organization.  


## Prerequisites
The following **scopes** are required to execute portions of this API: *People.Read*; *People.Read.All*

## Examples
### Browse
The requests in this section get the people most relevant to the signed-in user (`/me`), based on communication, collaboration, and business relationships. 
By default, each response returns 10 records, but you can change this using the *$top* parameter. These requests require the *People.Read* scope.

<!-- {
  "blockType": "request",
  "name": "get_person"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/people/
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "8CE6E1DE-CB84-4BF5-971D-D3ECF452E2B5",
            "displayName": "Joni Sherman",
            "givenName": "Joni",
            "surname": "Sherman",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Paralegal",
            "companyName": null,
            "yomiCompany": "",
            "department": "Legal",
            "officeLocation": "20/1109",
            "profession": "",
            "userPrincipalName": "JoniS@contoso.onmicrosoft.com",
            "imAddress": "sip:jonis@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "JoniS@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 980 555 0101"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "5767393D-42BA-4E5C-BEE4-52BB25639CF4",
            "displayName": "Isaiah Langer",
            "givenName": "Isaiah",
            "surname": "Langer",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Web Marketing Manager",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "20/1101",
            "profession": "",
            "userPrincipalName": "IsaiahL@contoso.onmicrosoft.com",
            "imAddress": "sip:isaiahl@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "IsaiahL@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 918 555 0101"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "914B5191-11FA-4C0B-A354-0FA8C8EFD585",
            "displayName": "Enrico Cattaneo",
            "givenName": "Enrico",
            "surname": "Cattaneo",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Attorney",
            "companyName": null,
            "yomiCompany": "",
            "department": "Legal",
            "officeLocation": "14/1102",
            "profession": "",
            "userPrincipalName": "EnricoC@contoso.onmicrosoft.com",
            "imAddress": "sip:enricoc@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "EnricoC@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 205 555 0103"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "E3C5B235-DE15-4566-B7B1-7A8E32426540",
            "displayName": "Ben Walters",
            "givenName": "Ben",
            "surname": "Walters",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "VP Sales",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "19/3123",
            "profession": "",
            "userPrincipalName": "BenW@contoso.onmicrosoft.com",
            "imAddress": "sip:benw@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "BenW@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 732 555 0102"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6BB54D2C-EF20-48DA-ADD9-AE757DD30C4E",
            "displayName": "Allan Deyoung",
            "givenName": "Allan",
            "surname": "Deyoung",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Corporate Security Officer",
            "companyName": null,
            "yomiCompany": "",
            "department": "Operations",
            "officeLocation": "24/1106",
            "profession": "",
            "userPrincipalName": "AllanD@contoso.onmicrosoft.com",
            "imAddress": "sip:alland@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "AllanD@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 262 555 0106"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "818E29A1-E6BB-4EDA-AB20-8230B4B1E290",
            "displayName": "Adele Vance",
            "givenName": "Adele",
            "surname": "Vance",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Product Marketing Manager",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "18/2111",
            "profession": "",
            "userPrincipalName": "AdeleV@contoso.onmicrosoft.com",
            "imAddress": "sip:adelev@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "AdeleV@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 425 555 0109"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "62633BAA-1CB9-4FA2-9B8F-55AB1840B69D",
            "displayName": "Alex Wilber",
            "givenName": "Alex",
            "surname": "Wilber",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Marketing Assistant",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "131/1104",
            "profession": "",
            "userPrincipalName": "AlexW@contoso.onmicrosoft.com",
            "imAddress": "sip:alexw@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "AlexW@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 858 555 0110"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6BB9CC1F-418D-4DDF-AB0C-6A1C4ABCDBF4",
            "displayName": "Brian Johnson (TAILSPIN)",
            "givenName": "Brian",
            "surname": "Johnson",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": null,
            "companyName": null,
            "yomiCompany": "",
            "department": null,
            "officeLocation": null,
            "profession": "",
            "userPrincipalName": "BrianJ@contoso.onmicrosoft.com",
            "imAddress": null,
            "scoredEmailAddresses": [
                {
                    "address": "BrianJ@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "E7D40AC5-0078-4575-B1F3-F738124C4BC9",
            "displayName": "Lee Gu",
            "givenName": "Lee",
            "surname": "Gu",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "CVP Research & Development",
            "companyName": null,
            "yomiCompany": "",
            "department": "Research & Development",
            "officeLocation": "23/3101",
            "profession": "",
            "userPrincipalName": "LeeG@contoso.onmicrosoft.com",
            "imAddress": "sip:leeg@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "LeeG@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 913 555 0101"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6F99D1CC-4FCC-49E4-9160-E8AB01BF3E83",
            "displayName": "Debra Berger",
            "givenName": "Debra",
            "surname": "Berger",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Administrative Assistant",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "18/2107",
            "profession": "",
            "userPrincipalName": "DebraB@contoso.onmicrosoft.com",
            "imAddress": "sip:debrab@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "DebraB@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 425 555 0105"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        }
    ],
}
```

#### Requesting a subsequent page of people
If the first response does not contain the complete list of relevant people, you can make a second request using *$top* and *$skip* to request additional pages of information. If the previous request has additional information, the following request gets the next page of people from the server.

```http
GET https://graph.microsoft.com/v1.0/me/people/?$top=10&$skip=10
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "1F28616D-BDFE-4080-8F06-03366A851688",
            "displayName": "Grady Archie",
            "givenName": "Grady",
            "surname": "Archie",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "CVP Legal",
            "companyName": null,
            "yomiCompany": "",
            "department": "Legal",
            "officeLocation": "19/2109",
            "profession": "",
            "userPrincipalName": "GradyA@contoso.onmicrosoft.com",
            "imAddress": "sip:gradya@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "GradyA@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 309 555 0104"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "8A3FC021-6DBB-44AC-8884-B7B500CC260A",
            "displayName": "Henrietta Mueller",
            "givenName": "Henrietta",
            "surname": "Mueller",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Marketing Assistant",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "18/1106",
            "profession": "",
            "userPrincipalName": "HenriettaM@contoso.onmicrosoft.com",
            "imAddress": "sip:henriettam@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "HenriettaM@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 954 555 0118"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "032C9919-4DF9-4715-8C46-4D0FAE7B3EB2",
            "displayName": "Pradeep Gupta",
            "givenName": "Pradeep",
            "surname": "Gupta",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Accountant II",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "98/2202",
            "profession": "",
            "userPrincipalName": "PradeepG@contoso.onmicrosoft.com",
            "imAddress": "sip:pradeepg@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "PradeepG@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+20 255501070"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "47C64008-CD27-43BA-BA58-F6F28F00F555",
            "displayName": "Diego Siciliani",
            "givenName": "Diego",
            "surname": "Siciliani",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "CVP Finance",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "14/1108",
            "profession": "",
            "userPrincipalName": "DiegoS@contoso.onmicrosoft.com",
            "imAddress": "sip:diegos@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "DiegoS@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 205 555 0108"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "56155636-703F-47F2-B657-C83F01F49BBC",
            "displayName": "Irvin Sayers",
            "givenName": "Irvin",
            "surname": "Sayers",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Director",
            "companyName": null,
            "yomiCompany": "",
            "department": "Legal",
            "officeLocation": "19/2106",
            "profession": "",
            "userPrincipalName": "IrvinS@contoso.onmicrosoft.com",
            "imAddress": "sip:irvins@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "IrvinS@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 309 555 0101"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "C43BF05E-5B6B-4DCF-B2FC-0837B09E0FA9",
            "displayName": "Bob Kelly (TAILSPIN)",
            "givenName": null,
            "surname": null,
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": null,
            "companyName": null,
            "yomiCompany": "",
            "department": null,
            "officeLocation": null,
            "profession": "",
            "userPrincipalName": "",
            "imAddress": null,
            "scoredEmailAddresses": [
                {
                    "address": "bobk@tailspintoys.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "PersonalContact"
            }
        },
        {
            "id": "212C995E-39B4-470B-9FFB-E577A5EA7080",
            "displayName": "Lynne Robbins",
            "givenName": "Lynne",
            "surname": "Robbins",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Product Manager",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "20/1104",
            "profession": "",
            "userPrincipalName": "LynneR@contoso.onmicrosoft.com",
            "imAddress": "sip:lynner@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "LynneR@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 918 555 0104"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "34F31945-DCE6-48BC-92EC-32F1963553F5",
            "displayName": "Nestor Wilke",
            "givenName": "Nestor",
            "surname": "Wilke",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "CVP Operations",
            "companyName": null,
            "yomiCompany": "",
            "department": "Operations",
            "officeLocation": "36/2121",
            "profession": "",
            "userPrincipalName": "NestorW@contoso.onmicrosoft.com",
            "imAddress": "sip:nestorw@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "NestorW@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 206 555 0105"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "C0BD1BA1-A84E-4796-9C65-F8A0293741D1",
            "displayName": "Megan Bowen",
            "givenName": "Megan",
            "surname": "Bowen",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Auditor",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "12/1110",
            "profession": "",
            "userPrincipalName": "MeganB@contoso.onmicrosoft.com",
            "imAddress": "sip:meganb@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "MeganB@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 412 555 0109"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "CEDF5DEC-F706-4FF4-AACF-7DE3C2C06FEC",
            "displayName": "Patti Fernandez",
            "givenName": "Patti",
            "surname": "Fernandez",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "President",
            "companyName": null,
            "yomiCompany": "",
            "department": "Executive Management",
            "officeLocation": "15/1102",
            "profession": "",
            "userPrincipalName": "PattiF@contoso.onmicrosoft.com",
            "imAddress": "sip:pattif@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "PattiF@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 502 555 0144"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        }
    ],
}
```


#### Sort the response
By default the people in the response are sorted by their relevance to your query. You can change the order of the people in the response using the *$orderby* parameter. This query selects the people most relevant to you, sorts them by their display name, and then returns the first 10 people on the sorted list.

```http
GET https://graph.microsoft.com/v1.0/me/people/?$orderby=displayName
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "818E29A1-E6BB-4EDA-AB20-8230B4B1E290",
            "displayName": "Adele Vance",
            "givenName": "Adele",
            "surname": "Vance",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Product Marketing Manager",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "18/2111",
            "profession": "",
            "userPrincipalName": "AdeleV@contoso.onmicrosoft.com",
            "imAddress": "sip:adelev@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "AdeleV@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 425 555 0109"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "62633BAA-1CB9-4FA2-9B8F-55AB1840B69D",
            "displayName": "Alex Wilber",
            "givenName": "Alex",
            "surname": "Wilber",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Marketing Assistant",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "131/1104",
            "profession": "",
            "userPrincipalName": "AlexW@contoso.onmicrosoft.com",
            "imAddress": "sip:alexw@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "AlexW@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 858 555 0110"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6BB54D2C-EF20-48DA-ADD9-AE757DD30C4E",
            "displayName": "Allan Deyoung",
            "givenName": "Allan",
            "surname": "Deyoung",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Corporate Security Officer",
            "companyName": null,
            "yomiCompany": "",
            "department": "Operations",
            "officeLocation": "24/1106",
            "profession": "",
            "userPrincipalName": "AllanD@contoso.onmicrosoft.com",
            "imAddress": "sip:alland@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "AllanD@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 262 555 0106"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "E3C5B235-DE15-4566-B7B1-7A8E32426540",
            "displayName": "Ben Walters",
            "givenName": "Ben",
            "surname": "Walters",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "VP Sales",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "19/3123",
            "profession": "",
            "userPrincipalName": "BenW@contoso.onmicrosoft.com",
            "imAddress": "sip:benw@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "BenW@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 732 555 0102"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "C43BF05E-5B6B-4DCF-B2FC-0837B09E0FA9",
            "displayName": "Bob Kelly (TAILSPIN)",
            "givenName": null,
            "surname": null,
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": null,
            "companyName": null,
            "yomiCompany": "",
            "department": null,
            "officeLocation": null,
            "profession": "",
            "userPrincipalName": "",
            "imAddress": null,
            "scoredEmailAddresses": [
                {
                    "address": "bobk@tailspintoys.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "PersonalContact"
            }
        },
        {
            "id": "6BB9CC1F-418D-4DDF-AB0C-6A1C4ABCDBF4",
            "displayName": "Brian Johnson (TAILSPIN)",
            "givenName": "Brian",
            "surname": "Johnson",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": null,
            "companyName": null,
            "yomiCompany": "",
            "department": null,
            "officeLocation": null,
            "profession": "",
            "userPrincipalName": "BrianJ@contoso.onmicrosoft.com",
            "imAddress": null,
            "scoredEmailAddresses": [
                {
                    "address": "BrianJ@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "CD33533B-064F-4922-AD2D-AF544DCD7C34",
            "displayName": "Christie Cline",
            "givenName": "Christie",
            "surname": "Cline",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Sr. VP Sales & Marketing",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "131/2105",
            "profession": "",
            "userPrincipalName": "ChristieC@contoso.onmicrosoft.com",
            "imAddress": "sip:christiec@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "ChristieC@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 858 555 0111"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "MkU4MDBGNDUtMEY3OS00MzM4LTg3RUUtNENFOTFBRURCODcxbm9yZXBseUB5YW1tZXIuY29t",
            "displayName": "Contoso Demo on Yammer",
            "givenName": null,
            "surname": null,
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": null,
            "companyName": null,
            "yomiCompany": "",
            "department": null,
            "officeLocation": null,
            "profession": "",
            "userPrincipalName": "",
            "imAddress": null,
            "scoredEmailAddresses": [
                {
                    "address": "noreply@yammer.com",
                    "relevanceScore": 0
                }
            ],
            "phones": [],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "ImplicitContact"
            }
        },
        {
            "id": "6F99D1CC-4FCC-49E4-9160-E8AB01BF3E83",
            "displayName": "Debra Berger",
            "givenName": "Debra",
            "surname": "Berger",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Administrative Assistant",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "18/2107",
            "profession": "",
            "userPrincipalName": "DebraB@contoso.onmicrosoft.com",
            "imAddress": "sip:debrab@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "DebraB@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 425 555 0105"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "47C64008-CD27-43BA-BA58-F6F28F00F555",
            "displayName": "Diego Siciliani",
            "givenName": "Diego",
            "surname": "Siciliani",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "CVP Finance",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "14/1108",
            "profession": "",
            "userPrincipalName": "DiegoS@contoso.onmicrosoft.com",
            "imAddress": "sip:diegos@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "DiegoS@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 205 555 0108"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        }
    ]
}
```

#### Changing the number of people returned and the fields returned
You can change the number of people returned in the response by setting the *$top* parameter. 

The following example requests the 1,000 perople most relevant to `/me`. The request also limits the amount of data sent back from the server by requesting only the display name of the person.


```http
GET https://graph.microsoft.com/v1.0/me/people/?$top=1000&$Select=displayName
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "8CE6E1DE-CB84-4BF5-971D-D3ECF452E2B5",
            "displayName": "Joni Sherman"
        },
        {
            "id": "5767393D-42BA-4E5C-BEE4-52BB25639CF4",
            "displayName": "Isaiah Langer"
        },
        {
            "id": "914B5191-11FA-4C0B-A354-0FA8C8EFD585",
            "displayName": "Enrico Cattaneo"
        },
        {
            "id": "E3C5B235-DE15-4566-B7B1-7A8E32426540",
            "displayName": "Ben Walters"
        },
        {
            "id": "6BB54D2C-EF20-48DA-ADD9-AE757DD30C4E",
            "displayName": "Allan Deyoung"
        },
        {
            "id": "818E29A1-E6BB-4EDA-AB20-8230B4B1E290",
            "displayName": "Adele Vance"
        },
        {
            "id": "62633BAA-1CB9-4FA2-9B8F-55AB1840B69D",
            "displayName": "Alex Wilber"
        },
        {
            "id": "6BB9CC1F-418D-4DDF-AB0C-6A1C4ABCDBF4",
            "displayName": "Brian Johnson (TAILSPIN)"
        },
        {
            "id": "E7D40AC5-0078-4575-B1F3-F738124C4BC9",
            "displayName": "Lee Gu"
        },
        {
            "id": "6F99D1CC-4FCC-49E4-9160-E8AB01BF3E83",
            "displayName": "Debra Berger"
        },
        {
            "id": "1F28616D-BDFE-4080-8F06-03366A851688",
            "displayName": "Grady Archie"
        },
        {
            "id": "8A3FC021-6DBB-44AC-8884-B7B500CC260A",
            "displayName": "Henrietta Mueller"
        },
        {
            "id": "032C9919-4DF9-4715-8C46-4D0FAE7B3EB2",
            "displayName": "Pradeep Gupta"
        },
      ... etc
}
```

#### Selecting the fields to return
You can limit the amount of data returned from the server by using the *$select* parameter to choose one or more fields. The *@odata.id* field is always returned.

The following example limits the response to the *displayName* and *ScoredEmailAddress* of the 10 most relevant people.

```http
GET https://graph.microsoft.com/v1.0/me/people/?$select=displayName,scoredEmailAddresses
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "8CE6E1DE-CB84-4BF5-971D-D3ECF452E2B5",
            "displayName": "Joni Sherman",
            "scoredEmailAddresses": [
                {
                    "address": "JoniS@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        },
        {
            "id": "5767393D-42BA-4E5C-BEE4-52BB25639CF4",
            "displayName": "Isaiah Langer",
            "scoredEmailAddresses": [
                {
                    "address": "IsaiahL@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        },
        {
            "id": "914B5191-11FA-4C0B-A354-0FA8C8EFD585",
            "displayName": "Enrico Cattaneo",
            "scoredEmailAddresses": [
                {
                    "address": "EnricoC@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        },
        {
            "id": "E3C5B235-DE15-4566-B7B1-7A8E32426540",
            "displayName": "Ben Walters",
            "scoredEmailAddresses": [
                {
                    "address": "BenW@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        },
        {
            "id": "6BB54D2C-EF20-48DA-ADD9-AE757DD30C4E",
            "displayName": "Allan Deyoung",
            "scoredEmailAddresses": [
                {
                    "address": "AllanD@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        },
        {
            "id": "818E29A1-E6BB-4EDA-AB20-8230B4B1E290",
            "displayName": "Adele Vance",
            "scoredEmailAddresses": [
                {
                    "address": "AdeleV@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        },
        {
            "id": "62633BAA-1CB9-4FA2-9B8F-55AB1840B69D",
            "displayName": "Alex Wilber",
            "scoredEmailAddresses": [
                {
                    "address": "AlexW@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        },
        {
            "id": "6BB9CC1F-418D-4DDF-AB0C-6A1C4ABCDBF4",
            "displayName": "Brian Johnson (TAILSPIN)",
            "scoredEmailAddresses": [
                {
                    "address": "BrianJ@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        },
        {
            "id": "E7D40AC5-0078-4575-B1F3-F738124C4BC9",
            "displayName": "Lee Gu",
            "scoredEmailAddresses": [
                {
                    "address": "LeeG@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        },
        {
            "id": "6F99D1CC-4FCC-49E4-9160-E8AB01BF3E83",
            "displayName": "Debra Berger",
            "scoredEmailAddresses": [
                {
                    "address": "DebraB@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        }
    ]
}
```

#### Using a filter to limit the response
You can use the *$filter* parameter to limit the response to only those people whose record contains the specified criteria. 

The following query limits the response to people with the personType class "Person" and subclass "OrganizationUser."


```http
GET https://graph.microsoft.com/v1.0/me/people/?$filter=personType/class eq 'Person' and personType/subclass eq 'OrganizationUser'
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "8CE6E1DE-CB84-4BF5-971D-D3ECF452E2B5",
            "displayName": "Joni Sherman",
            "givenName": "Joni",
            "surname": "Sherman",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Paralegal",
            "companyName": null,
            "yomiCompany": "",
            "department": "Legal",
            "officeLocation": "20/1109",
            "profession": "",
            "userPrincipalName": "JoniS@contoso.onmicrosoft.com",
            "imAddress": "sip:jonis@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "JoniS@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 980 555 0101"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "5767393D-42BA-4E5C-BEE4-52BB25639CF4",
            "displayName": "Isaiah Langer",
            "givenName": "Isaiah",
            "surname": "Langer",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Web Marketing Manager",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "20/1101",
            "profession": "",
            "userPrincipalName": "IsaiahL@contoso.onmicrosoft.com",
            "imAddress": "sip:isaiahl@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "IsaiahL@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 918 555 0101"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "914B5191-11FA-4C0B-A354-0FA8C8EFD585",
            "displayName": "Enrico Cattaneo",
            "givenName": "Enrico",
            "surname": "Cattaneo",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Attorney",
            "companyName": null,
            "yomiCompany": "",
            "department": "Legal",
            "officeLocation": "14/1102",
            "profession": "",
            "userPrincipalName": "EnricoC@contoso.onmicrosoft.com",
            "imAddress": "sip:enricoc@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "EnricoC@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 205 555 0103"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "E3C5B235-DE15-4566-B7B1-7A8E32426540",
            "displayName": "Ben Walters",
            "givenName": "Ben",
            "surname": "Walters",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "VP Sales",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "19/3123",
            "profession": "",
            "userPrincipalName": "BenW@contoso.onmicrosoft.com",
            "imAddress": "sip:benw@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "BenW@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 732 555 0102"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6BB54D2C-EF20-48DA-ADD9-AE757DD30C4E",
            "displayName": "Allan Deyoung",
            "givenName": "Allan",
            "surname": "Deyoung",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Corporate Security Officer",
            "companyName": null,
            "yomiCompany": "",
            "department": "Operations",
            "officeLocation": "24/1106",
            "profession": "",
            "userPrincipalName": "AllanD@contoso.onmicrosoft.com",
            "imAddress": "sip:alland@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "AllanD@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 262 555 0106"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "818E29A1-E6BB-4EDA-AB20-8230B4B1E290",
            "displayName": "Adele Vance",
            "givenName": "Adele",
            "surname": "Vance",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Product Marketing Manager",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "18/2111",
            "profession": "",
            "userPrincipalName": "AdeleV@contoso.onmicrosoft.com",
            "imAddress": "sip:adelev@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "AdeleV@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 425 555 0109"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "62633BAA-1CB9-4FA2-9B8F-55AB1840B69D",
            "displayName": "Alex Wilber",
            "givenName": "Alex",
            "surname": "Wilber",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Marketing Assistant",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "131/1104",
            "profession": "",
            "userPrincipalName": "AlexW@contoso.onmicrosoft.com",
            "imAddress": "sip:alexw@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "AlexW@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 858 555 0110"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6BB9CC1F-418D-4DDF-AB0C-6A1C4ABCDBF4",
            "displayName": "Brian Johnson (TAILSPIN)",
            "givenName": "Brian",
            "surname": "Johnson",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": null,
            "companyName": null,
            "yomiCompany": "",
            "department": null,
            "officeLocation": null,
            "profession": "",
            "userPrincipalName": "BrianJ@contoso.onmicrosoft.com",
            "imAddress": null,
            "scoredEmailAddresses": [
                {
                    "address": "BrianJ@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "E7D40AC5-0078-4575-B1F3-F738124C4BC9",
            "displayName": "Lee Gu",
            "givenName": "Lee",
            "surname": "Gu",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "CVP Research & Development",
            "companyName": null,
            "yomiCompany": "",
            "department": "Research & Development",
            "officeLocation": "23/3101",
            "profession": "",
            "userPrincipalName": "LeeG@contoso.onmicrosoft.com",
            "imAddress": "sip:leeg@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "LeeG@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 913 555 0101"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6F99D1CC-4FCC-49E4-9160-E8AB01BF3E83",
            "displayName": "Debra Berger",
            "givenName": "Debra",
            "surname": "Berger",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Administrative Assistant",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "18/2107",
            "profession": "",
            "userPrincipalName": "DebraB@contoso.onmicrosoft.com",
            "imAddress": "sip:debrab@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "DebraB@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 425 555 0105"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        }
    ],
}

```

#### Selecting the fields to return in a filtered response

You can combine the *$select* and *$filter* parameters to create a custom list of people relevant to the user and get only the fields that your application needs. 

The following example gets the *displayName* and *scoredEmailAddress* of people whose display name equals the specified name. In this example, only people whose display name equals "Joni Sherman" are returned. 

```http
GET https://graph.microsoft.com/v1.0/me/people/?$select=displayName,scoredEmailAddresses&$Filter=displayName eq 'Joni Sherman'
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "8CE6E1DE-CB84-4BF5-971D-D3ECF452E2B5",
            "displayName": "Joni Sherman",
            "scoredEmailAddresses": [
                {
                    "address": "JoniS@contoso.onmicrosoft.com",
                    "relevanceScore": 8
                }
            ]
        }
    ]
}
```

### Search people
The requests in this section also get the people most relevant to the signed-in user (`/me`). Search requests require the *People.Read* scope.

#### Using search to select people

Use the *$search* parameter to select people who meet a particular set of criteria. 

The following search query returns people relevant to `/me` whose displayName has a word that begins with the letter "b".

```http
GET https://graph.microsoft.com/v1.0/me/people/?$search=b
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "E3C5B235-DE15-4566-B7B1-7A8E32426540",
            "displayName": "Ben Walters",
            "givenName": "Ben",
            "surname": "Walters",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "VP Sales",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "19/3123",
            "profession": "",
            "userPrincipalName": "BenW@contoso.onmicrosoft.com",
            "imAddress": "sip:benw@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "BenW@contoso.onmicrosoft.com",
                    "relevanceScore": -12.297347783416837
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 732 555 0102"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "C43BF05E-5B6B-4DCF-B2FC-0837B09E0FA9",
            "displayName": "Bob Kelly (TAILSPIN)",
            "givenName": null,
            "surname": null,
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": null,
            "companyName": null,
            "yomiCompany": "",
            "department": null,
            "officeLocation": null,
            "profession": "",
            "userPrincipalName": "",
            "imAddress": null,
            "scoredEmailAddresses": [
                {
                    "address": "bobk@tailspintoys.com",
                    "relevanceScore": -12.298154282019846
                }
            ],
            "phones": [],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "PersonalContact"
            }
        },
        {
            "id": "6BB9CC1F-418D-4DDF-AB0C-6A1C4ABCDBF4",
            "displayName": "Brian Johnson (TAILSPIN)",
            "givenName": "Brian",
            "surname": "Johnson",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": null,
            "companyName": null,
            "yomiCompany": "",
            "department": null,
            "officeLocation": null,
            "profession": "",
            "userPrincipalName": "BrianJ@contoso.onmicrosoft.com",
            "imAddress": null,
            "scoredEmailAddresses": [
                {
                    "address": "BrianJ@contoso.onmicrosoft.com",
                    "relevanceScore": -12.531408487977451
                }
            ],
            "phones": [],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6F99D1CC-4FCC-49E4-9160-E8AB01BF3E83",
            "displayName": "Debra Berger",
            "givenName": "Debra",
            "surname": "Berger",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Administrative Assistant",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "18/2107",
            "profession": "",
            "userPrincipalName": "DebraB@contoso.onmicrosoft.com",
            "imAddress": "sip:debrab@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "DebraB@contoso.onmicrosoft.com",
                    "relevanceScore": -17.97276278710934
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 425 555 0105"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6226EA3C-0859-4183-A048-AAA9D6FF78A2",
            "displayName": "Emily Braun",
            "givenName": "Emily",
            "surname": "Braun",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Budget Analyst",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "97/2302",
            "profession": "",
            "userPrincipalName": "EmilyB@contoso.onmicrosoft.com",
            "imAddress": "sip:emilyb@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "EmilyB@contoso.onmicrosoft.com",
                    "relevanceScore": -18.069757484348642
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+81 345550115"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "C0BD1BA1-A84E-4796-9C65-F8A0293741D1",
            "displayName": "Megan Bowen",
            "givenName": "Megan",
            "surname": "Bowen",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Auditor",
            "companyName": null,
            "yomiCompany": "",
            "department": "Finance",
            "officeLocation": "12/1110",
            "profession": "",
            "userPrincipalName": "MeganB@contoso.onmicrosoft.com",
            "imAddress": "sip:meganb@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "MeganB@contoso.onmicrosoft.com",
                    "relevanceScore": -18.37726882378883
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 412 555 0109"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        }
    ]
}
```

#### Using search to specify a relevant topic

The following request returns people relevant to `/me` whose name contains "j" and who have shown an interest in the Seattle Seahawks.

```http
GET https://graph.microsoft.com/v1.0/me/people/?$search="j topic: Seattle Seahawks"
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "value": [
       {
           "id": "B3E5302D-EAF0-4E8B-8C6C-A2AE64B4B163",
           "displayName": "Johanna Lorenz",
           "givenName": "Johanna",
           "surname": "Lorenz",
           "birthday": "",
           "personNotes": "",
           "isFavorite": false,
           "jobTitle": "CVP Engineering",
           "companyName": null,
           "yomiCompany": "",
           "department": "Engineering",
           "officeLocation": "23/2102",
           "profession": "",
           "userPrincipalName": "JohannaL@contoso.onmicrosoft.com",
           "imAddress": "sip:johannal@contoso.onmicrosoft.com",
           "scoredEmailAddresses": [
               {
                   "address": "JohannaL@contoso.onmicrosoft.com",
                   "relevanceScore": -20.468913178224973
               }
           ],
           "phones": [
               {
                   "type": "Business",
                   "number": "+1 502 555 0102"
               }
           ],
           "postalAddresses": [],
           "websites": [],
           "personType": {
               "class": "Person",
               "subclass": "OrganizationUser"
           }
       },
       {
           "id": "8CE6E1DE-CB84-4BF5-971D-D3ECF452E2B5",
           "displayName": "Joni Sherman",
           "givenName": "Joni",
           "surname": "Sherman",
           "birthday": "",
           "personNotes": "",
           "isFavorite": false,
           "jobTitle": "Paralegal",
           "companyName": null,
           "yomiCompany": "",
           "department": "Legal",
           "officeLocation": "20/1109",
           "profession": "",
           "userPrincipalName": "JoniS@contoso.onmicrosoft.com",
           "imAddress": "sip:jonis@contoso.onmicrosoft.com",
           "scoredEmailAddresses": [
               {
                   "address": "JoniS@contoso.onmicrosoft.com",
                   "relevanceScore": -21.21009315141824
               }
           ],
           "phones": [
               {
                   "type": "Business",
                   "number": "+1 980 555 0101"
               }
           ],
           "postalAddresses": [],
           "websites": [],
           "personType": {
               "class": "Person",
               "subclass": "OrganizationUser"
           }
       },
       {
           "id": "6BB9CC1F-418D-4DDF-AB0C-6A1C4ABCDBF4",
           "displayName": "Brian Johnson (TAILSPIN)",
           "givenName": "Brian",
           "surname": "Johnson",
           "birthday": "",
           "personNotes": "",
           "isFavorite": false,
           "jobTitle": null,
           "companyName": null,
           "yomiCompany": "",
           "department": null,
           "officeLocation": null,
           "profession": "",
           "userPrincipalName": "BrianJ@contoso.onmicrosoft.com",
           "imAddress": null,
           "scoredEmailAddresses": [
               {
                   "address": "BrianJ@contoso.onmicrosoft.com",
                   "relevanceScore": -25.639257596617703
               }
           ],
           "phones": [],
           "postalAddresses": [],
           "websites": [],
           "personType": {
               "class": "Person",
               "subclass": "OrganizationUser"
           }
       }
   ]
}
```

#### Performing a fuzzy search

The following request does a search for a person named "Megan Bowan." Because there is a person named "Megan Bowen" relevant to the signed-in user, 
the information for "Megan Bowen" is returned.

```http
GET https://graph.microsoft.com/v1.0/me/people/?$search="Megan Bowan"
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
       {
           "id": "C0BD1BA1-A84E-4796-9C65-F8A0293741D1",
           "displayName": "Megan Bowen",
           "givenName": "Megan",
           "surname": "Bowen",
           "birthday": "",
           "personNotes": "",
           "isFavorite": false,
           "jobTitle": "Auditor",
           "companyName": null,
           "yomiCompany": "",
           "department": "Finance",
           "officeLocation": "12/1110",
           "profession": "",
           "userPrincipalName": "MeganB@contoso.onmicrosoft.com",
           "imAddress": "sip:meganb@contoso.onmicrosoft.com",
           "scoredEmailAddresses": [
               {
                   "address": "MeganB@contoso.onmicrosoft.com",
                   "relevanceScore": -16.446060612802224
               }
           ],
           "phones": [
               {
                   "type": "Business",
                   "number": "+1 412 555 0109"
               }
           ],
           "postalAddresses": [],
           "websites": [],
           "personType": {
               "class": "Person",
               "subclass": "OrganizationUser"
           }
       }
   ]

}
```

### Related people

The following request gets the people most relevant to another person in the user's organization. This request requires the *People.Read.All* scope. In this example, Joni Sherman's relevant people are displayed.

```http
GET https://graph.microsoft.com/v1.0/users('benw@contoso.com')/people/
```

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
     "value": [
        {
            "id": "56155636-703F-47F2-B657-C83F01F49BBC",
            "displayName": "Irvin Sayers",
            "givenName": "Irvin",
            "surname": "Sayers",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Director",
            "companyName": null,
            "yomiCompany": "",
            "department": "Legal",
            "officeLocation": "19/2106",
            "profession": "",
            "userPrincipalName": "IrvinS@contoso.onmicrosoft.com",
            "imAddress": "sip:irvins@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "IrvinS@contoso.onmicrosoft.com",
                    "relevanceScore": 20
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 309 555 0101"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "6BF27D5A-AB4F-4C43-BED0-7DAD9EB0C1C4",
            "displayName": "Lidia Holloway",
            "givenName": "Lidia",
            "surname": "Holloway",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Product Manager",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "20/2107",
            "profession": "",
            "userPrincipalName": "LidiaH@contoso.onmicrosoft.com",
            "imAddress": "sip:lidiah@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "LidiaH@contoso.onmicrosoft.com",
                    "relevanceScore": 10
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 918 555 0107"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "B3E5302D-EAF0-4E8B-8C6C-A2AE64B4B163",
            "displayName": "Johanna Lorenz",
            "givenName": "Johanna",
            "surname": "Lorenz",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "CVP Engineering",
            "companyName": null,
            "yomiCompany": "",
            "department": "Engineering",
            "officeLocation": "23/2102",
            "profession": "",
            "userPrincipalName": "JohannaL@contoso.onmicrosoft.com",
            "imAddress": "sip:johannal@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "JohannaL@contoso.onmicrosoft.com",
                    "relevanceScore": 10
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 502 555 0102"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "5767393D-42BA-4E5C-BEE4-52BB25639CF4",
            "displayName": "Isaiah Langer",
            "givenName": "Isaiah",
            "surname": "Langer",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Web Marketing Manager",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "20/1101",
            "profession": "",
            "userPrincipalName": "IsaiahL@contoso.onmicrosoft.com",
            "imAddress": "sip:isaiahl@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "IsaiahL@contoso.onmicrosoft.com",
                    "relevanceScore": 10
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 918 555 0101"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "2BD1FA88-7C62-4D26-8B03-9126D02B1722",
            "displayName": "Miriam Graham",
            "givenName": "Miriam",
            "surname": "Graham",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "VP Marketing",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "131/2103",
            "profession": "",
            "userPrincipalName": "MiriamG@contoso.onmicrosoft.com",
            "imAddress": "sip:miriamg@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "MiriamG@contoso.onmicrosoft.com",
                    "relevanceScore": 10
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 858 555 0109"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "CD33533B-064F-4922-AD2D-AF544DCD7C34",
            "displayName": "Christie Cline",
            "givenName": "Christie",
            "surname": "Cline",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "Sr. VP Sales & Marketing",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "131/2105",
            "profession": "",
            "userPrincipalName": "ChristieC@contoso.onmicrosoft.com",
            "imAddress": "sip:christiec@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "ChristieC@contoso.onmicrosoft.com",
                    "relevanceScore": 7
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 858 555 0111"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "E3C5B235-DE15-4566-B7B1-7A8E32426540",
            "displayName": "Ben Walters",
            "givenName": "Ben",
            "surname": "Walters",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "VP Sales",
            "companyName": null,
            "yomiCompany": "",
            "department": "Sales & Marketing",
            "officeLocation": "19/3123",
            "profession": "",
            "userPrincipalName": "BenW@contoso.onmicrosoft.com",
            "imAddress": "sip:benw@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "BenW@contoso.onmicrosoft.com",
                    "relevanceScore": 1
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 732 555 0102"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        },
        {
            "id": "1F28616D-BDFE-4080-8F06-03366A851688",
            "displayName": "Grady Archie",
            "givenName": "Grady",
            "surname": "Archie",
            "birthday": "",
            "personNotes": "",
            "isFavorite": false,
            "jobTitle": "CVP Legal",
            "companyName": null,
            "yomiCompany": "",
            "department": "Legal",
            "officeLocation": "19/2109",
            "profession": "",
            "userPrincipalName": "GradyA@contoso.onmicrosoft.com",
            "imAddress": "sip:gradya@contoso.onmicrosoft.com",
            "scoredEmailAddresses": [
                {
                    "address": "GradyA@contoso.onmicrosoft.com",
                    "relevanceScore": 0
                }
            ],
            "phones": [
                {
                    "type": "Business",
                    "number": "+1 309 555 0104"
                }
            ],
            "postalAddresses": [],
            "websites": [],
            "personType": {
                "class": "Person",
                "subclass": "OrganizationUser"
            }
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get person",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
