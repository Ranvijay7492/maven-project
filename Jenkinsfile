pipeline
{
agent any
stages
{
 stage ('scm checkout')
 { steps {
     git branch: 'master', url: 'https://github.com/prakashk0301/maven-project/'
         }
 }
 
 stage ('code compile')
 {
     steps {
             withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') 
              {   sh 'mvn compile'  }

           }
 }


stage ('unit test framework')
{
    steps {
        withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') 
         { sh 'mvn test' }

    }
}


stage ('create package')
{
    steps {
     
          withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') 
            { sh 'mvn package' }
    }
}

stage ('Run Docker build')
{ steps { sh 'docker build -t pkw0301/oct_cicd_tomcat:v1 .'}
}


stage ('Upload Docke image to Docker hUb')
{ steps { 
withDockerRegistry(credentialsId: 'DockerHubAccount', url: 'https://index.docker.io/v1/') {
   sh 'docker push pkw0301/oct_cicd_tomcat:v1'
}
}
}


}}
