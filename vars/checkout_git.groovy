def checkout_git(String repo, String branch) {
    
    echo "This is for checking out git code."
   git credentialsId: 'sathya', url: "git@github.com:sathyakishore41/${repo}.git", branch: "${branch}"
}

return this
