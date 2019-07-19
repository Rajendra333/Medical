pipeline {
  agent any

    tools{
      jdk "Java-1.8"
      maven "Maven-3.6.1"
    }
  stages{
    stage('Clone sources'){
      steps{
        git url: 'https://github.com/Rajendra333/Medical.git'
      }
    }
    stage('SonarQube analysis'){
      steps{
        withSonarQubeEnv('SonarQube7.8'){
          bat 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin3.6.0.1398:sonar'
        }
      }
    }
    stage('Artifactory configuration'){
      steps{
        script{
          rt.Maven.tool= 'Maven-3.6.1'
          rtMaven.deployer releaseRepo: 'libs-release-local', snapshotRepo: 'libs-snapshot-local' , server: server
          rtMaven.resolver releaseRepo: 'libs-release' , snapshotRepo: 'libs-snapshot' , server: server
          rtMaven.deployer.arrtifactDeploymentPatterns.addExclude("pom.xml")
          buildInfo = Artifactory.newBuildInfo()
          buildInfo.retention maxBuilds: 10 , maxDays: 7 ,deleteBuildArtifacts: true
          buildInfo.env.capture = true
        }
      }
    }
    stage('publish build info'){
      steps{
        script{
          server.publishBuildInfo buildInfo
        }
      }
    }
  }
}
