#!/usr/bin/env groovy

pipeline {
    agent any
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