pipeline {
    agent {
        label 'windows' // Replace with the label assigned to your Windows agent
    }
    stages {
        stage('Prepare') {
            steps {
                echo 'Preparing the environment on Windows agent...'
                // Example: Create a directory
                bat 'mkdir C:\\temp\\my_project'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the application on Windows agent...'
                // Example: Run a simple command
                bat 'echo Hello from Windows Agent!'
                // Example: Run a PowerShell script
                powershell 'Get-ChildItem C:\\'
            }
        }
        stage('Clean Up') {
            steps {
                echo 'Cleaning up on Windows agent...'
                // Example: Remove a directory
                bat 'rmdir /s /q C:\\temp\\my_project'
            }
        }
    }
}
