String test_URL1= 'https://google.com'
String test_URL2= 'https://youtube.com'

pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Build step"'
        script {

          timeout(time: 1, unit: 'MINUTES') {
            // Show the select input modal
            env.INPUT_PARAMS = input message: 'Deploy to region B', ok: 'Deploy'
         		env.TYPE_TEST = env.INPUT_PARAMS
          }//timeout
        }
      }
    }

    stage('Test') {
      steps {
        sh 'echo "Test step"'
      }
    }    
    
    stage('Deploy') {
      steps {
        sh 'echo "Deploy step"'
      }
    }
  }
}
