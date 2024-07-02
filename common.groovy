def updateGithubStatus(state){
    withCredentials([usernamePassword(credentialsId: 'github_assignment_dryrun', usernameVariable: 'USER'), passwordVariable: 'PASSWORD']) {
        sh """
            curl --location
            https://api.GitHub.com/repos/${USER}/assignment_dryrun/statuses/${GIT_COMMI
            T}?=null' \
            --header 'Content-Type: application/json' \
            --header 'Authorization: Bearer ${PASSWORD}'
            --data '("state": "${state}", "context": "Dryrun", "description": "Jenkins",
            "target_url": "${BUILD_URL}"}'
        """
    }
}