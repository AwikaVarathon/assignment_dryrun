pipeline {
    agent {
        label 'my_mac_m1'
    }
    stages {
        stage('Runing test') {
            steps {
                script{
                    common = load "common.groovy"
                    common.updateGithubStatus()
                    echo "Done Set Github Status"
                }
            }
            post {
                always {
                    script{
                        if("${currentBuild.currentResult}" == 'SUCCESS') {
                            common.updateGithubStatus()
                        } else {
                            common.updateGithubStatus()
                        }
                    }
                }
            }
        }
    }
    // environment {
    //     CONCURRENT = "--processes 3"
    //     TESTPATH = "./testcases"
    // }
    // stages {
    //     stage('Dryrun CICD website training') {
    //         steps {
    //             echo 'Dryrun CICD Dryrun CICD website Training'
    //             script{
    //                 echo "Dryrun with pabot"
    //                 sh "pabot --pabotlib ${CONCURRENT} --dryrun  --outputdir testResultWeb ${TESTPATH}"
    //                 echo "Done Dryrun with pabot"
    //                 common = load "common.groovy"
    //                 common.updateGithubStatus("pending")
    //                 echo "Done Set Github Status"
    //             }
    //         }
    //         post {
    //             always {
    //                 echo 'Pulish robot framework dryrun test results'
    //                 robot logFileName: 'log.html', outputFileName: 'output.xml', outputPath: './testResultWeb', reportFileName: 'report.html'
    //                 // script{
    //                 //     if("${currentBuild.currentResult}" == 'SUCCESS') {
    //                 //         common.updateGithubStatus("success")
    //                 //     } else {
    //                 //         common.updateGithubStatus("failure")
    //                 //     }
    //                 // }
    //             }
    //         }
    //     }
    //     stage('Robocop CICD website Training') {
    //         steps {
    //             sh "python3 -m robocop -A ./robocop.cfg ."
    //         }
    //         post {
    //             always {
    //                 echo "Finished robocop"
    //             }
    //             success {
    //                 echo "Robocop passed"
    //             }
    //             failure {
    //                 echo "Robocop failed"
    //             }
    //         }
    //     }
    // }
}