pipeline {
  agent {
    label 'docker'
  }
  stages {
    stage('Docker Build') {
      steps {
	script {
        	sh "docker build $WORKSPACE -t testapp:${env.BUILD_NUMBER} "
	}
      }
    }
  }
}
