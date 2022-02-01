@Library('cop-pipeline-step') _
@Library('cop-pipeline-bootstrap') __

pipeline{

    agent any

    environment {
	 
           AWS_ROLE = "subham-role"
           AWS_REGION='us-west-2'
           AWS_ACCOUNT = '947666650043'
           AWS_ENVIRONMENT = "preprod"
           STACK_NAME = "test"
	   APP_NAME = 'subham-app'
	   STATE_BUCKET_PREFIX='947666650043-bucket'
    }
	
    stages {


 stage('********************************************Create Snapshot & Restore********************************************') 
          {  
            steps {
                 genericBuild(
                    image: 'hashicorp/terraform:latest',
                    cmd: \
                    terraform init  -input=false -reconfigure -backend-config=region="${AWS_REGION}" -backend-config=bucket="${STATE_BUCKET_PREFIX}"-"${AWS_ENVIRONMENT}"-state -backend-config=workspace_key_prefix="${APP_NAME}"-"${AWS_ENVIRONMENT}" -backend-config=key=subham-dni && \
		    terraform destroy -auto-approve && \
	            terraform plan -input=false -out=subham-tfplan.tfplan && \
                    terraform apply subham.tfplan',
                    aws: [
                        roleAccount:"${AWS_ACCOUNT}",
                        role: "${AWS_ROLE}",
                        region: "${AWS_REGION}"
                    ]
                 )
            }
        }       
	}	
}
