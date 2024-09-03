properties([parameters([
    choice(choices: ['Android', 'IOS', 'MAC', 'OpenHarmony'], description: '选择打包平台', name: 'PublishPlatform'),

])])

pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "build stage, ${params.PublishPlatform}"

            }
        }
    }
}
