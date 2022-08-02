
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
                
                
                 dir("boxfuse-sample-java-war-hello")
                 {
                     script {
                         checkout_git.checkout_git("boxfuse-sample-java-war-hello", "master")
                     }
                 }

                 

                
        }
     }

    //   stage('create tag on git repo') {
    //         steps {                                
    //              dir("boxfuse-sample-java-war-hello") {                        
    //             script {create_tag.create_tag("${tag}")}                
    //              }
    //         }
    //     }
         

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
                dir("boxfuse-sample-java-war-hello")
                {
                script 
                {
                //    aws_codebuild.aws_codebuild("project-1", "${tag}")
                 aws_codebuild.aws_codebuild("project-1")
                }
                }
            }
        }

        
        // stage('deploy java to tomcat') {
        //     steps {
        //            sh "echo env is ${ENVIRONMENT} "
        //             script {deploy_tomcat.deploy_tomcat("${tag}", "${ENVIRONMENT}")}
                
        //     }
        // }               
        
        
    }
    
}

