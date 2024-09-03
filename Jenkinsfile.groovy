properties([parameters([choice(choices: ['Android', 'IOS', 'MAC', 'OpenHarmony'], description: '选择打包平台', name: 'PublishPlatform'),
                        gitParameter(name: 'PublishBranch', branch: '', branchFilter: '', defaultValue: "origin/master", description: '代码分支,选择分之后会自动丢弃所有改动,并拉取到对应分支,默认master', quickFilterEnabled: true, selectedValue: 'NONE', sortMode: 'DESCENDING_SMART', tagFilter: '*', type: 'GitParameterDefinition', useRepository: 'https://github.com/ZihouWong/dotfiles.git'),])])

pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    echo "build stage, ${params.PublishPlatform}"
                    checkout(

                        [$class: 'GitSCM',
                         branches: [[name: "${params.PublishBranch}"]],
                         doGenerateSubmoduleConfigurations: false,
                         extensions: [[$class: 'CloneOption', depth: 0, timeout: 30],
                                      [$class: 'CheckoutOption', timeout: 30],],
                         submoduleCfg: [],
                         userRemoteConfigs: [[url: 'https://github.com/ZihouWong/dotfiles.git']]]

                    )
                }
            }
        }
    }
}
