# declare variables
$GitHubUsername='KristineGray'
$PracticeRepoDir='C:\Users\Kris\source\repos\LaunchCode\Unit4\powershell-practice'
$CommitMessage='auto committed from auto-committing-setup.ps1!'

# fork and clone this repo into the powershell-studio directory
git clone "https://github.com/$GitHubUsername/powershell-practice" "$PracticeRepoDir"

# copy the auto-committing-setup.ps1 script (by its absolute path) into the cloned repo directory
copy-item 'C:\Users\Kris\auto-committing-setup.ps1' -Destination "$PracticeRepoDir" 

# change into the cloned directory
set-location $PracticeRepoDir

# add the new script file in the cloned directory to git staging
git add .

# commit the changes to the repo using the message variable
git commit -m "$CommitMessage"

# push the local git history back to your forked repo
git push