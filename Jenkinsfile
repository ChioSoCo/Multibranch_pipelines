String test_URL1= 'https://google.com'
String test_URL2= 'https://youtube.com'

pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Build step"'
        script {

          //Configure "Jira Steps" section from the Manage Jenkins/Configure System page (plugin: JIRA Pipeline Steps)
          
          def testIssue = [fields: [ project: [key: 'WEC'], 
          summary: "TSE - Build ${currentBuild.displayName} - ${currentBuild.currentResult}",
          description: "Google Report: ${test_URL1} Youtube Report: ${test_URL2}",
          issuetype: [name: 'Task']]]
          def newIssue = jiraNewIssue issue: testIssue, site: 'RS'
          echo newIssue.data.key
          
          //key: name of the project in Jira
          //summary: Name of the Ticket
          //description: Description of the Ticket
          //site: name of the configured site at the Jira pipeline Steps plugin
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
