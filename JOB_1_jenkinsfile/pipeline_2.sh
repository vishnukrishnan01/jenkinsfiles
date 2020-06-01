Pipeline {
	agent { label 'master' }
	stages {
		stage ("SCM_CHECKOUT"){
			steps {
				checkout([$class: 'GitSCM', branches: [[name: '*dev']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'jenkinstest']], submoduleCfg: [], userRemoteConfigs: [[url: 'git@github.com:vishnukrishnan01/jenkinstest.git']]])
				dir('repo1')

				checkout([$class: 'GitSCM', branches: [[name: '*dev']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'jenkinstest']], submoduleCfg: [], userRemoteConfigs: [[url: 'git@github.com:vishnukrishnan01/jenkinstest_2.git']]])
				dir('repo1')
			}
		}
	}
}
