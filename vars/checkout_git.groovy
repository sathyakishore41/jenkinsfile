def checkout_git(string repo) {
    
    echo "This is for checking out git code."
   git credentialsId: 'sathya', url: 'git@github.com:sathyakishore41/${repo}.git' 
}

return this
