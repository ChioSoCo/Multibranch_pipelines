pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Build step"'
      }
    }
    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            sh 'echo "Test step"'
          }
        }
        stage('extra test') {
          steps {
            echo 'other test - test'
          }
        }
      }
    }
    stage('Deploy') {
      steps {
        sh 'echo "Deploy step"'
      }
    }
  }
}