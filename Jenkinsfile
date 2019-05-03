pipeline {
  agent any
  stages {
    stage('Copy config to prod') {
      steps {
        sh 'scp -r . wordnet:~/config/'
        sh 'ssh wordnet "chmod +x ~/config/configure.sh"'
      }
    }
    stage('Apply config to prod') {
      steps {
        sh 'ssh wordnet "~/config/configure.sh"'
      }
    }
    stage('Clean up') {
      steps {
        sh 'ssh wordnet "rm -rf ~/config/*"'
      }
    }
  }
}
