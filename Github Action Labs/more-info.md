Microsoft Openbook Annocement = https://techcommunity.microsoft.com/t5/microsoft-learn-blog/introducing-a-new-resource-for-all-role-based-microsoft/ba-p/3500870 
 
What is Role based Exam - https://learn.microsoft.com/en-us/credentials/certifications/posts/new-role-based-certification-and-training-is-here 
Try identifying keyword - first speed read ==> then read slowly ==> review options 
Negative marks – attempt all   
Try intelligent Guess Work  
MS Learn – Type Min Words (intent of question) 
GITHUB ACTION DEMO:
    Instructions : https://chatgpt.com/share/67a4d221-6bf0-8013-b899-5d062bd1255d
    GIT COMMANDS  -- LAB TIME
## Activity - 2 

1. Login to your github account
2. Fork my repo => https://github.com/Trainer-AJ/5feb25  
demo link: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo
3. Clone it 2 your computer => git clone your-forked-repo-url
4, Create a new branch : git checkout -b your-name  ==> Edit readme.md => write your Name there 
5. Push it back: git push origin branch-name 
6. Create a Pull Request
demo: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request

## ACtivity - 1

1. Install Git : https://git-scm.com/downloads  IF ANY  Installtion not allowed in your computer : [CREATE CODESPACE (it's FREE) ]: https://docs.github.com/en/codespaces/developing-in-a-codespace/creating-a-codespace-for-a-repository#creating-a-codespace-for-a-repository
2. Create an Account & your Remote Repo : https://github.com/
3. one-by - one copy paste in your terminal

mkdir esiaz400-demo; cd esiaz400-demo
echo "This is first file" > readme.md
git --version
git init
git config user.email your-email
git config user.name your-github-username
git add readme.md
git status
git add Readme.md
git commit -m "v0.1 = My first Git commit"
git log
git remote add origin your-repo-url-here
git push -u origin main

Go to your your-github repo..... Notice your code is now visible there 

Az 400 Questions

1. You perfer Gym or home Workout 
a. Gym
b. Home 

answers:

- a 

1. 
You wanted to make sure, infra engineer are not assigned work items of a dev. What should you configure in this case (they have separate Kanban boards)?
a. Process
b. Team   
c. Group
d. Project 

correct answer: B 


2. Azure DevOps Project can have two different work item process type for same project at same time?
a. True
b. False

Correct Answer: B 

3. 
Which of the following choices isn't an Azure DevOps service/feature?
 
A. Azure Boards.
B. Azure Monitor.
C. Azure Repos.

Correct Answer: B 

4. 
You are working in ABC company and you     wish to add new users, You want all your users to have MFA base access to     azure devops using conditional access     policy in Azure entra, How you should add a user - 


a. You should add users via:
1.     Add via Email 
2.     Add via Entra ID Tenants
3.     Use Oauth Apps
4.     Use Privileged Identity management

correct answer: 2 
 
B. Where can you configure (add / remove) users in Azure devops Organisation?
1: Organisation settings only
2: Project settings only
3. Both 1 and 2
4. None of These
5. Azure Entra

correct answer: 1 

5. Can You delete an Devops Project, if yes in how many days you can recover a deleted project?
a.               Never
b.               You can’t delete a project
c.                Less than 30 days
d.               More than 30 days

correct answer: c

6. Can we change the by default connected Azure Entra ID tenant after creation of Azure DevOps Organization?
a. yes possible
b. Not possible 

correct answer: a

7.You added few users into your azure devOps organization and later to a Azure DevOps Project. There names are reflecting as users in that project. But they all are complaining that the cannot see the option of Azure Repo hence cannot create any Branch Protection Policy, You need to fix this issue. Which settings should you change / check first ?

a. Security Group
b. Entra Tenant Settings
c. RBAC 
d, Access Level
e. add them to subscription as a member

correct answr: d


8. You need to integrate Azuer devops Boards with Slack / Teams. So that you can recieve notifications of any modicfication / creations of work items. How to configure that - 
by changing settings in :
    a. Notification option under project settings
    b. service Hook option under organization settings
    c. service Hook option under project settings
d. Notification option under organization settings

correct answer: C 



Practice Lab-1 :
    0. Open Incognito / Inprivate Windows (use ctrl + shift + N) 
    1. you have to sign up for a free outlook account.
    2.  create an Azure DevOps organization and then you can get started.
    (https://aex.dev.azure.com/) => create new organization 
    3. follow tutorial : https://microsoftlearning.github.io/AZ400-DesigningandImplementingMicrosoftDevOpsSolutions/Instructions/Labs/AZ400_M01_L01_Agile_Plan_and_Portfolio_Management_with_Azure_Boards.html
    
