# wec-test-automation-ios

Full test cases scrips

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

* [Git for Windows](https://git-scm.com/download/win)


### Test Automation Repositories
    
| Repository  | Default branch |
| ------------- | ------------- |
| wec-test-automation-android | master |
| wec-test-automation-ios | master |

Comments:
Test automation team must upload their source code (without the jar file -builded project-) in these new (clean) repositories.
Upload the full code in the master branch.
Start to use the branching strategy (check the Branch strategy section on this page), following the naming convention for branches.
**If you are working in multiple Jira tickets, for the creation of the feature branch just specify ONE of the tickets number.

At the end the feature branch will be deleted when the feature branch is merged to master.

Pull requests will be now generated in the new repositories to merge their changes into master.
To execute the tests scripts from Jenkins, meanwhile they will still uploading only the Aoctp project an jar file in the OLD repositories
wec-test-automation-ios	master




Connection between the applications and Jenkins
Check the diagram below.



1.- Existing source code (test scripts) in the correspondent Bitbucket repository (Android test scripts must have their own repository, also iOS test scripts must have their own repo).

     On both repositories (Android and iOS) must contain the test scripts (Test Automation team) and the Jenkinsfile (DevOps team).

     Responsible: Test Automation Team



2.- The Jenkinsfile contains all the needed Stages to build/execute the test scripts 

     Responsible: DevOps Team

     For more information about Jenkinsfiles check: 

     https://jenkins.io/doc/book/pipeline/jenkinsfile/

     https://jenkins.io/doc/book/pipeline/syntax/



3.- Jenkins reads the correspondent Jenkinsfile of the repositories (Android and iOS) and when it detects a trigger (commit to the repo, pull request) the Pipeline is automatically executed.



4.- Jenkins then turns on a Docker container (previously created) as a node and executes the stages of the Jenkinsfile.







Branch strategy
Checkout this diagram:





master branch:

Working code that is being used for Dev/QA environments.



feature branch: 

Create a new feature branch (from master) every time you have to create/develop/modify a functionality.

*To merge changes of features branches in to master, you must generate a Pull Request from the feature branch in to master and it has to be approved by the Test lead.

Naming convention for Feature branches
Branch type
Create from branch
Naming convention
Example
Feature	master	feature/[JIRA_TICKET_ID]	
feature/wcm-1234

feature/wcm-3520

feature/wcm-1224

feature/wcm-9982

*CREATE THE FEATURE BRANCH FROM THE DEFAULT BRANCH (master)

**If you are working in multiple Jira tickets, for the creation of the feature branch just specify ONE of the tickets number.

Where:

[JIRA_TICKET_ID] → Id of the Jira's ticket where the feature was requested.



Test Automation Flow






How to
Create a feature branch


1.- Go to the repository and select "Create branch from here".

*Remember to create the feature branch from the master branch.





2.- Specify the name of the new feature branch and click on Create branch.



3.- Now you can see the created branch.





Work with feature branch
1.- Go to the repository and copy the clone URL:



2.- Go to your local machine and clone the repository

Open a Git bash console

Execute:

git clone [REPO_URL]
example:

git clone https://



3.- Go inside the cloned repository

Execute:

cd CLONED_REPOSITORY_FOLDER_NAME
example:

cd wec-test-automation-ios



*You can see that by default you are on the master branch.



4.- List the existing branches for that repository

Execute:

git branch -a


*If you don't see your feature branch, execute "git pull" to get the latest changes from Bitbucket in to your machine.



5.- Switch to your feature branch

Execute

git checkout [NAME_OF_YOUR_FEATURE_BRANCH]
example:

git checkout feature/wcm-4078 





6.- Now you can see the existing files for the feature branch.



Make your required changes and then upload them to the repository (in your feature branch).



Push changes in to Bitbucket


1.- Add
To add all files from the current folder execute:

git add .


To add specific file execute:

git add file.name
git add /path/to/the.file
Example:

git add test_script.java

git add src/adapter/test.class



Hint: execute “git status” after the add command to validate the status of the changes that you added.





2.-  Commit
Create a new commit and attach a message

git commit –m “This is the descriptive message of the commit”
Hint: execute “git status” after the commit command to validate the status of the changes that you commited.





Recommendatios for commit messages
Add a general description of the commited changes.
Ex.
git commit –m “Creation of json file to build the application”
git commit –m “Adding a feature in to json file to get the total of executed tests”
git commit –m “Updating json file with new environment variables to get total of fails”



Avoid unclear messages
Ex.
git commit –m “03.20.2019.13:36CST”
git commit – m “feature/wcm-1233”
git commit –m “push”



3.- Push
Push to the remote repository the commited changes on HEAD.

git push


Push a new Branch (this Branch does not currently exist on the remote repository)

git push origin [NAME_OF_BRANCH]
Example:

  git push origin feature/wcm-1234





Create a pull request 
When you ask to integrate your changes into and other Branch.
*Must exists a reviewer which validates that the Project stills fully working when the changes get integrated.

*When the feature branch has your latest changes in the Bitbucket repository, now you create a Pull request to master to merge the changes to master.



1.- Go to the repository and click on Pull request/Create pull request.





2.- Select the feature branch from which you want to merge into master branch.



3.- Add the Title and Description of the changes that you are merging in to master.

*Remember to add a reviewer for the Pull request.





4.- The reviewer will see a list of pull request that must to review.

Can also consult the description of the merge.





It's possible to see the differences of the changes.





Can add comments to the person that created the pull request.





*Fix the merge conflicts manually before merging the changes.

