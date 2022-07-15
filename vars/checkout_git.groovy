def checkout_git() {
    
    echo "This is for checking out git code."
   git credentialsId: 'sathya', url: 'git@github.com:sathyakishore41/java-hello-world-with-maven.git' 
}

return this
