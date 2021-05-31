pipeline {
    agent any
    parameters{
	     string( defaultValue: '', name: 'branch', description: 'Branch')
	     choice( choices: ['pass', 'run,not pass'], description: 'Please choice action', name: 'actions')
    }
	    
    stages {
        stage('Ls') {
		when {
			expression {return 'run' in env.actions.split(',')}
		}
            steps {
		    checkout scm: [$class: 'GitSCM', source: 'ssh://git@github.com/ATolkachev/epam-ci-cd-app.git', clean: true, credentialsId: 'github_key_2', branches: [[name: "${env.branch}"]]], poll: false

		    //git branch: "${env.branch}", url: 'ssh://git@github.com/ATolkachev/epam-ci-cd-app.git', credentialsId: 'atolkachev'
            }
        }
	stage('git') {
		when {
			expression {return 'run' in env.actions.split(',')}
		}
            steps {
                sh 'git status'
            }
        }
    }
}
