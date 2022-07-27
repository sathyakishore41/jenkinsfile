
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
                
                
                 dir("sparkjava-war-example")
                 {
                     script {
                         checkout_git.checkout_git("sparkjava-war-example", "master")
                     }
                 }

                 

                
        }
     }

      stage('create tag on git repo') {
            steps {                                
                 dir("sparkjava-war-example") {                        
                script {create_tag.create_tag("${tag}")}                
                 }
            }
        }
         

        // stage('Maven Build') {  
        //     steps {
        //         script 
        //         {
        //             dir("sparkjava-war-example") {maven_build.maven_build()}
        //         }
        //     }

        // }

        stage('Trigger AWS Code Build') {
            steps {
                dir("sparkjava-war-example")
                {
                script 
                {
                   aws_codebuild.aws_codebuild("project-7", "${tag}")
                }
                }
            }
        }
        
        
    }
    
}

