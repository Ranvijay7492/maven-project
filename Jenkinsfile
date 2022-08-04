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
        stage('Docker build and push'){
            steps{
                withDockerRegistry(credentialsId: 'DockerHub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t ranvijay7492/maven-web:latest .'
                    sh 'docker images'
                    sh 'docker push ranvijay7492/maven-web:latest'
                }         
            }
        }
    }
}
