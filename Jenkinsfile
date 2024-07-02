pipeline {
    agent {
        label 'my_mac_m1'
    }
    environment {
        CONCURRENT = "--processes 3"
        TESTPATH = "./testcases"
    }
    stages {
        stage('Dryrun CICD website training') {
            steps {
                echo 'Dyrun CICD Dryrun CICD website Training'
                script{
                    
                    echo "test"
                    sh "pabot --pabotlib ${CONCURRENT} --dryrun  --outputdir testResultWeb ${TESTPATH}"
                    common = load "common.groovy"
                    common.updateGithubStatus("pending")
                }
            }
            post {
                always {
                    echo 'Pulish robot framework dryrun test results'
                    robot logFileName: 'log.html', outputFileName: 'output.xml', outputPath: './testResultWeb', reportFileName: 'report.html'
                    script{
                        if("${currentBuild.currentResult}" == 'SUCCESS') {
                            common.updateGithubStatus("success")
                        } else {
                            common.updateGithubStatus("failure")
                        }
                    }
                }
            }
        }
        stage('Robocop CICD website Training') {
            steps {
                sh "python3 -m robocop -A ./robocop.cfg ."
            }
            post {
                always {
                    echo "Finished robocop"
                }
                success {
                    echo "Robocop passed"
                }
                failure {
                    echo "Robocop failed"
                }
            }
        }
    }
}