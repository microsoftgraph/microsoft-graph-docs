# Contribute to Microsoft Graph documentation

Thank you for your interest in Microsoft Graph documentation! 

* [Ways to contribute](#ways-to-contribute)
* [Before we can accept your pull request](#before-we-can-accept-your-pull-request)
* [Repository organization](#repository-organization)
* [Use GitHub, Git, and this repository](#use-github-git-and-this-repository)
* [How to use Markdown to format your topic](#how-to-use-markdown-to-format-your-topic)
* [Standard Markdown](#standard-markdown)
* [More resources](#more-resources)

## Ways to contribute

You can contribute to [Microsoft Graph documentation](http://graph.microsoft.io/docs) in these ways:

* Contribute to articles via the [public Microsoft Graph developer docs repo](https://github.com/microsoftgraph/microsoft-graph-docs)
* Report documentation bugs via [GitHub Issues](https://github.com/microsoftgraph/microsoft-graph-docs/issues)
* Add documentation requests to the [Office Developer Platform UserVoice](http://officespdev.uservoice.com)

##Before we can accept your pull request

###Minor corrections

Minor corrections or clarifications you submit for documentation and code examples in this repository don't require a Contribution License Agreement (CLA). Submissions are taken in the form of pull requests. We'll do our best to review pull requests within 10 business days.


###Larger submissions

If you submit new or significant changes to documentation and code examples, you need to send us a signed Contribution License Agreement (CLA) before we can accept your pull request if you are in one of these groups:

* Members of the Microsoft Open Technologies group
* Contributors who don't work for Microsoft

As a community member, **you must sign the Contribution License Agreement (CLA) before you can contribute large submissions to this project**, but you need to complete and submit the documentation only once. Please carefully review the document; you may also need to have your employer sign the document.

Signing the Contribution License Agreement (CLA) does not grant you rights to commit to the main repository, but it does mean that the Office Developer and Office Developer Content Publishing teams will be able to review and consider your contributions and you will get credit if we do.

You can download the Contribution License Agreement (CLA) [here](https://github.com/microsoftgraph/microsoft-graph-docs/raw/master/Contribution%20License%20Agreement.pdf). Please fill out the form and email it to [officedev@microsoft.com](mailto:officedev@microsoft.com).

Once we receive and process your CLA, we'll do our best to review your pull requests within 10 business days.

## Repository organization

The content in the microsoft-graph-docs repository is grouped first by article language, then by topic. The README.md file at the root of each topic directory specifies the structure of the articles within the topic.

Articles within each topic are named by MSDN GUID, not by title. This is a side effect of our document management process and can't be changed at this time. We highly recommend using the table of contents within each topic directory to navigate to the files you wish to view or edit. For more information, please see [README.md](https://github.com/microsoftgraph/microsoft-graph-docs/blob/master/README.md).

## Use GitHub, Git, and this repository

**Note:** Most of the information in this section can be found in [GitHub Help] [] articles.  If you're familiar with Git and GitHub, skip to the **Contribute and edit content** section for the particulars of the code/content flow of this repository.

### Setting up your fork of the repository

1.	Set up a GitHub account so you can contribute to this project. If you haven't done this already, please go to [GitHub Home] [] and do it now.
2.	Set up your machine with Git. Follow the instructions in the [Setting up Git Tutorial] [Set Up Git].
3.	Create your own fork of this repository. To do this, at the top of the page,  click the **Fork** button.
4.	Copy your fork to your local machine. To do this, go open GitBash. At the command prompt enter:

		git clone https://github.com/{your user name}/microsoft-graph-docs.git

	Next, create a reference to the root repository by entering these commands:

		cd microsoft-graph-docs
		git remote add upstream https://github.com/microsoftgraph/microsoft-graph-docs.git
		git fetch upstream

Congratulations! You've now set up your repository. You won't need to repeat these steps again.

### Contribute and edit content

To make the contribution process as seamless as possible for you, follow this procedure.

1. Create a new branch.
2. Add new content or edit existing content.
3. Submit a pull request to the main repository.
4. Delete the branch.

Limit each branch to a single concept/article to streamline the workflow and reduce the chance of merge conflicts. The following types of contribution are appropriate for a new branch:

* A new article (and associated images)
* Spelling and grammar edits on an article
* Applying a single formatting change across a large set of articles (e.g., applying a new copyright footer).

#### Create a new branch

1.	Open GitBash.
2.	Type `git pull upstream master:<new branch name>` at the prompt. This creates a new branch locally that's copied from the latest microsoftgraph master branch. **Note:** For internal contributors, replace `master` in the command with the branch for the publishing date you're targeting.
3.	Type `git push origin <new branch name>` at the prompt. This will alert GitHub to the new branch. You should now see the new branch in your fork of the repository on GitHub.
4.	Type `git checkout <new branch name>` to switch to your new branch.

#### Add new content or edit existing content

You navigate to the repository on your local machine by using File Explorer. The repository files are in `C:\Users\<yourusername>\microsoft-graph-docs`.

To edit files, open them in an editor of your choice and modify them. To create a new file, use the editor of your choice and save the new file in the appropriate location in your local copy of the repository. While working, be sure to save your work frequently.

The files in `C:\Users\<yourusername>\microsoft-graph-docs` are a working copy of the new branch that you created in your local repository. Changing anything in this folder doesn't affect the local repository until you commit a change. To commit a change to the local repository, type the following commands in GitBash:

	git add .
	git commit -v -a -m "<Describe the changes made in this commit>"

The `add` command adds your changes to a staging area in preparation for committing them to the repository. The period after the `add` command specifies that you want to stage all of the files that you added or modified, checking subfolders recursively. (If you don't want to commit all of the changes, you can add specific files. You can also undo a commit. For help, type `git add -help` or `git status`.)

The `commit` command applies the staged changes to the repository. `-m` means you are providing the commit comment in the command line. If you aren't targeting a specific date for publishing, you can say "for publishing ASAP".  The -v  and -a switches can be omitted. The -v switch is for verbose output from the command, and -a does what you already did with the add command.) 

You can commit multiple times while you are doing your work, or you can wait and commit only once when you're done.

#### Submit a pull request to the main repository

When you're finished with your work and are ready to have it merged into the central repository, follow these steps.

1.	In GitBash, type `git push origin <new branch name>` at the command prompt. In your local repository, `origin` refers to your GitHub repository that you cloned the local repository from. This command pushes the current state of your new branch, including all commits made in the previous steps, to your GitHub fork.
2.	On the GitHub site, navigate in your fork to the new branch.
3.	Click the **Pull Request** button at the top of the page.
4.	Ensure that the Base branch is `microsoftgraph/microsoft-graph-docs@master` and the Head branch is `<your username>/microsoft-graph-docs@<branch name>`.
5.	Click the **Update Commit Range** button.
6.	Give your pull request a Title, and describe all the changes you're making. If your bug fixes a UserVoice item or GitHub issue, be sure to reference that issue in the description.
7.	Submit the pull request.

One of the site administrators will now process your pull request. Your pull request will surface on the microsoftgraph/microsoft-graph-docs site under Issues. When the pull request is accepted, the issue will be resolved.

#### Create a new branch after merge

After a branch is successfully merged (i.e., your pull request is accepted), don't continue working in the local branch that was successfully merged upstream. This can lead to merge conflicts if you submit another pull request. Instead, if you want to do another update, create a new local branch from the successfully merged upstream branch.

For example, suppose your local branch X was successfully merged into the microsoftgraph/microsoft-graph-docs master branch and you want to make additional updates to the content that was merged. Create a new local branch, X2, from the microsoftgraph/microsoft-graph-docs master branch. To do this, open GitBash and execute the following commands:

	cd microsoft-graph-docs
	git pull upstream master:X2
	git push origin X2

You now have local copies (in a new local branch) of the work that you submitted in branch X. The X2 branch also contains all the work other writers have merged, so if your work depends on others' work (e.g., shared images), it is available in the new branch. You can verify that your previous work (and others' work) is in the branch by checking out the new branch...

	git checkout X2

...and verifying the content. (The `checkout` command updates the files in `C:\Users\<yourusername>\microsoft-graph-docs` to the current state of the X2 branch.) Once you check out the new branch, you can make updates to the content and commit them as usual. However, to avoid working in the merged branch (X) by mistake, it's best to delete it (see the following **Delete a branch** section).

#### Delete a branch

Once your changes are successfully merged into the central repository, you can delete the branch you used because you no longer need it.  Any additional work requires a new branch.  

To delete your branch follow these steps:

1.	In GitBash type `git checkout master` at the command prompt.  This ensures that you aren't in the branch to be deleted (which isn't allowed).
2.	Next, type `git branch -d <branch name>` at the command prompt.  This deletes the branch on your local machine only if it has been successfully merged to the upstream repository. (You can override this behavior with the `–D` flag, but first be sure you want to do this.)
3.	Finally, type `git push origin :<branch name>` at the command prompt (a space before the colon and no space after it).  This will delete the branch on your github fork.  

Congratulations, you have successfully contributed to the project.

## How to use Markdown to format your topic

### Standard Markdown

All of the articles in this repository use Markdown.  While a complete introduction (and listing of all the syntax) can be found at [Markdown Home] [], we'll cover the basics you'll need.

If you're looking for a good editor, try [Markdown Pad][].


### Markdown basics

This is a list of the most common markdown syntax:

* 	**Line breaks vs. paragraphs:** In Markdown there is no HTML `<br />` element. Instead, a new paragraph is designated by an empty line between two blocks of text.
*	**Italics:** The HTML `<i>some text</i>` is written `*some text*`
* 	**Bold:** The HTML `<strong>some text</strong>` element is written `**some text**`
* 	**Headings:** HTML headings are designated by an number of `#` characters at the start of the line.  The number of `#` characters corresponds to the hierarchical level of the heading (for example, `#` = h1, `##` = h2, and `###` = h3).
* 	**Numbered lists:** To create a numbered (ordered) list, start the line with `1. `. If you want multiple elements within a single list element, format your list as follows:
		
		1.	Notice that this line is tabbed over after the '.'
		
			Now notice that there is a line break between the two paragraphs in the list element, and that the indentation here matches the indentation of the line above.

*	**Bulleted lists:** Bulleted (unordered) lists are almost identical to ordered lists except that the `1. ` is replaced with either `* `, `- `, or `+ `.  Multiple element lists work the same way as they do with ordered lists.
*	**Links:** The base syntax for a link is `[visible link text](link url)`.

	Links can also have references, which is discussed in the **Link and Image References** section below.

*	**Images:** The base syntax for an image is `![alt text for the image](image url)`.

	Images can also have references, which is discussed in the **Link and Image References** section below.

*	**In-line HTML:** Markdown allows you to include HTML inline:  `<i>italic</i>` is correctly rendered by Markdown as <i>italic</i>.

### Link and image references

Markdown has a really nice feature that lets a user insert a reference instead of a URL for images and links. Here is the syntax for using this feature:

	The image below is from [Google][googleweb]
	
	![Google's logo][logo]
	
	[googleweb]: http://www.google.com
	[logo]: https://www.google.com/images/srpr/logo3w.png

By using references grouped at the bottom of your file, you can easily find, edit, and reuse link and image URLs. 


## More resources

* For more information about Markdown, go to [their site][Markdown Home].
* For more information about using Git and GitHub, first check out the [GitHub Help section] [GitHub Help] and if necessary contact the site administrators.

[GitHub Home]: http://github.com
[GitHub Help]: http://help.github.com/
[Set Up Git]: http://help.github.com/win-set-up-git/
[Markdown Home]: http://daringfireball.net/projects/markdown/
[Markdown Pad]: http://markdownpad.com/
[microsoftgraph/microsoft-graph-docs issues]: https://github.com/microsoftgraph/microsoft-graph-docs/issues
