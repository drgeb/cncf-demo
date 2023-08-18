

**Used gh command to login to gihub and create the repo.

```shell
gh auth login
```

Below is a sample session output:

```
? What account do you want to log into? GitHub.com
? What is your preferred protocol for Git operations? SSH
? Upload your SSH public key to your GitHub account? /Users/drgeb/.ssh/moc.buhtig.pub
? Title for your SSH key: moc.buhtig
? How would you like to authenticate GitHub CLI? Login with a web browser

! First copy your one-time code: DAB6-3AB8
Press Enter to open github.com in your browser...
✓ Authentication complete.
- gh config set -h github.com git_protocol ssh
✓ Configured git protocol
✓ SSH key already existed on your GitHub account: /XXX/XXXX/.ssh/XXXXXXX
✓ Logged in as drgeb
```

The next steps were to create the repo, and remote url and push my first file:

```shell
gh repo create cncf-demo -d "CNCF Demo using ArgoCD/Kubernetes" --public
git branch -M main
git remote add origin git@github.com:drgeb/cncf-demo.git
git add README.md
git push -u origin main
```

