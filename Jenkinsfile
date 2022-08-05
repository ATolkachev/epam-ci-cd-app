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
    stage('Deploy') {
      steps {
        build job: 'first_multibranch/Demo-CD', parameters: [string(name: 'IMAGE_TAG', value: "testapp:${env.BUILD_ID}")]
      }
    }
		  
  }
}
