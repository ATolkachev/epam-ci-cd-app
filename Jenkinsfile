

pipeline {
    agent any
	
environment {
        gitBranch = scm.branches[0].toString().replace('*/','')
}
    
    stages {
        stage('Ls') {
            steps {
                sh 'ls'
            }
        }
	stage('Ls -la') {
            steps {
                sh 'ls -la'
            }
        }
	    stage('env'){
		    steps {
			    script {
				    echo "${env.gitBranch}_${BUILD_NUMBER}"
			    }
		    }
	    }
    }
}
