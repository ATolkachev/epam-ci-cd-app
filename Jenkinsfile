pipeline {
  agent {
    label 'docker'
  }
  parameters {
	  string(name: 'IMAGE_TAG', defaultValue: 'None', description: '')
  }
  stages {
    stage('Docker Stop') {
      steps {
	script {
	  sh "docker ps | grep -v ID | awk '{print \$1}' | xargs docker kill"
	}
      }
    }
    stage('Docker Run') {
      steps {
	script {
		sh "docker container create -p5000:5000 --name container_${env.BUILD_ID} ${env.IMAGE_TAG}"
        	sh "docker start container_${env.BUILD_ID}"
	}
      }
    }
  }
}
