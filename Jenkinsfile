pipeline {
  agent {
    label 'docker'
  }
  stages {
    stage('Docker Build') {
      steps {
	container('docker') {
        	sh "docker build $WORKSPACE -t testapp:${env.BUILD_NUMBER} "
	}
      }
    }
  }
}
