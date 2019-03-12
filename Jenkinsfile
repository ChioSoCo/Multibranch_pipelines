pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Build step"'
        script {

          withEnv(['JIRA_SITE=RS']) {
          def testIssue = [fields: [ project: [id: 10000],
          summary: "New JIRA Created from Jenkins.",
          description: "Description New JIRA Created from Jenkins.",
                       issuetype: [name: 'Task']]]
          def newIssue = jiraNewIssue issue: issue, site: 'RS'
          echo newIssue.data.key
          //echo response.successful.toString()
          //echo response.data.toString()
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
