pipeline {
    agent any
    parameters{
	     string( defaultValue: '', name: 'branch', description: 'Branch')
    }
	    
    stages {
        stage('Ls') {
            steps {
		    checkout scm: [$class: 'GitSCM', source: 'ssh://git@github.com/ATolkachev/epam-ci-cd-app.git', clean: true, credentialsId: 'atolkachev', branches: [[name: "${env.branch}"]]], poll: false

		    //git branch: "${env.branch}", url: 'ssh://git@github.com/ATolkachev/epam-ci-cd-app.git', credentialsId: 'atolkachev'
            }
        }
	stage('git') {
            steps {
                sh 'git status'
            }
        }
    }
}
