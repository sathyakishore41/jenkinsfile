
@Library('MyLibrary') _
pipeline {
    agent any
    tools {
        maven "Maven"
    }
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
                
                 
                dir("java-hello-world-with-maven"){script {checkout_git.checkout_git("java-hello-world-with-maven")}}
                 
                
            }
        }

        stage('Maven Build') {
            steps {
                script 
                {
                    dir("dir1") {maven_build.maven_build()}
                }
            }

        }

        stage('Trigger AWS Code Build') {
            steps {
                dir("java-hello-world-with-maven")
                {
                script 
                {
                   aws_codebuild.aws_codebuild("project-4")
                }
                }
            }
        }
        
        
    }
    
}
