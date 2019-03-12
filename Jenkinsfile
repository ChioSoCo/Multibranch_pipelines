pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Build step"'
        script {

          withEnv(['JIRA_SITE=RS']) {
          def testIssue = [fields: [ project: [key: 'RS'],
          summary: "New JIRA Created from Jenkins.",
          description: "Description New JIRA Created from Jenkins.",
                       issuetype: [name: 'Task']]]
          response = jiraNewIssue issue: testIssue
          echo response.successful.toString()
          echo response.data.toString()
          }//withenv
          
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
