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
                withMaven(jdk: 'LocalJDK', maven: 'LocalMaven')
                { sh 'mvn clean package'}
            }
        }
    }
}
