pipeline {
  agent any
  stages{
    stage('Clone')
    {
      steps{
        git branch: 'master',url 'https://github.com/Rajendra333/Medical.git'
      }
    }
    stage('Build'){
      steps{
        sh 'mvn clean'
      }
      steps{
        sh 'mvn install'
      }
    }
  }
}
