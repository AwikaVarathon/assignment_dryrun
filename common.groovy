def updateGithubStatus(){
    echo "Update Github Status"
    try {
        withCredentials([usernamePassword( credentialsId: 'github_assignment_dryrun', usernameVariable: 'USER', passwordVariable: 'PASSWORD')]) {
            sh """
                curl --location 'https://api.GitHub.com/repos/${USER}/assignment_dryrun/statuses/${GIT_COMMIT}?=null' \
                --header 'Content-Type: application/json' \
                --header 'Authorization: Bearer ${PASSWORD}' \
                --data '{"state": "pending", "context": "Dryrun", "description": "Jenkins", "target_url": "${BUILD_URL}"}'
            """
        }//end withCredentials
        return true
    }// end try
    catch (err_robocop){
        echo "Found exception dryrun and robocop : ${err_robocop}"
        return false
    }
}