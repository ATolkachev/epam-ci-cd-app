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
        	sh "docker run -p5000:5000 ${env.IMAGE_TAG} &"
	}
      }
    }
  }
}
