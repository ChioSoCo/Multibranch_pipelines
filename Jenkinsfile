pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Build step"'
        script {

          withEnv(['JIRA_SITE=http://54.146.165.252:443']) {
          def testIssue = [fields: [ project: [key: WEC],
          summary: "New JIRA Created from Jenkins.",
          description: "Description New JIRA Created from Jenkins.",
                       issuetype: [id: 3]]]
          response = jiraNewIssue issue: testIssue
          echo response.successful.toString()
          echo response.data.toString()
          
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
