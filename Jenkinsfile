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
        stage('Deliver for development') {
            when {
                branch 'development'
            }
            steps {
                echo "in development branch"
                echo "execute this pipeline"
            }
        }
        stage('Deploy for production') {
            when {
                branch 'production'
            }
            steps {
                echo "in production branch"
                echo "execute other pipeline"
            }
        }
    }
}
