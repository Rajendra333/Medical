pipeline {
  agent any
  stages{
    stage('Clone')
    {
      steps{
       sh 'git clone https://github.com/Rajendra333/Medical.git'
      }
    }
    stage('Build'){
      steps{
        sh 'mvn cleanpackage'
      }
    }
  }
}
