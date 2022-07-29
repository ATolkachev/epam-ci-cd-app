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
		    //checkout scm: [$class: 'GitSCM', userRemoteConfigs: [[url: 'ssh://git@github.com/ATolkachev/epam-ci-cd-app.git', credentialsId: 'atolkachev']], branches: [[name: "${env.branch}"]]], poll: false

		    git branch: "${env.branch}", url: 'ssh://git@github.com/ATolkachev/epam-ci-cd-app.git'
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
	    stage('New'){
		    steps {
			    sh('echo "This is for you, my lovely students!"')
	    	}
		}
    }
}
