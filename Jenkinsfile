pipeline
{
agent any
stages
{
    stage('scm checkout')
    { steps { git branch: 'master', url: 'https://github.com/Ranvijay7492/maven-project' } }
    

    stage('Code build')
    { steps { withMaven(jdk: 'Local_JDK', maven: 'Local_Maven') {
        sh 'mvn clean package'                                          // Provide Maven command

} } }
}
}
