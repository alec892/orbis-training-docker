#!/usr/bin/env groovy

pipeline {
    stages {
        stage('Build') {
            steps {
                sh 'make project-workspace'
                sh 'make install'
            }
        }
        stage('Test') {
            steps {
                sh 'make start'
            }
        }
        stage('Deploy') {
            steps {
                sh 'release'
                sh 'deploy.ghpages'
            }
        }
    }
}