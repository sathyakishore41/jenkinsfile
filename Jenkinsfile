
@Library('MyLibrary') _
pipeline {
    agent any
    stages {
        
        stage('Hello World') {
            steps {
                script 
                {
                    helloworld.hello()
                }
            }
        }
        
        stage('Checkout code from Git') {
            steps {
                script 
                {
                    checkout_git.checkout_git("java-hello-world-with-maven")
                }
            }
        }

        stage('Maven Build') {
            steps {
                script 
                {
                    maven_build.maven_build()
                }
            }
        
        
    }
    
}
