pipeline {
    agent any
    tools {nodejs "NodeJS"}
    stages {
        stage('Source') {
            steps {
                git url: 'https://github.com/pallapoo/estore-admin-app.git' 
                
                bat "npm install"

                echo 'Source stage finished'
            }
        }

        stage('Build') {
            steps {
                bat "npm run ng build"
                echo 'Build stage finished'
            }
        }
    }
}
