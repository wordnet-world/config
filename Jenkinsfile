pipeline {
  agent any
  stages {
    stage('Copy config to prod') {
      steps {
        sh 'scp -r . wordnet:~/config/'
      }
    }
  }
}