pipeline{
    agent any
    stages{
        stage('scm checkout'){
            steps{
                git branch: 'master',  url: 'https://github.com/Ranvijay7492/maven-project'
            }
        }
        stage('code build'){
            steps{
                withMaven(jdk: 'local_JDK', maven: 'local_mavan')
                { sh 'mvn clean package'}
            }
        }
        stage('deploy to dev'){
            steps{
                sshagent(['CICD_Tomcat']) 
                {
                    sh 'scp -o StrictHostKeyChecking=no */target/*.war  ec2-user@172.31.89.193:/var/lib/tomcat/webapps'}
                }
        }
    }
}
