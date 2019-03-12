pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo "Build step"'
        script {
          def issue = [fields: [ project: [key: 'WEC'],
                       summary: 'New JIRA Created from Jenkins.',
                       description: 'New JIRA Created from Jenkins. description',
                       issuetype: [name: 'Task']]]
          def newIssue = jiraNewIssue issue: issue, site: 'http://54.146.165.252:443'
          echo newIssue.data.key
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
