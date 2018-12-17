pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Build step"'
      }
    }
  }
    stage('Test') {
      steps {
        sh 'echo "Test step"'
        sh 'newman run mycollection.json --reporters cli,json --reporter-json-export outputfile.json'
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
