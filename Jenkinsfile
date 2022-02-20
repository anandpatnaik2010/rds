pipeline{

    agent any

    environment {
	 
           AWS_ROLE = "AWSServiceRoleForRDS"
           AWS_REGION='us-east-1'
           AWS_ACCOUNT = '286429252326'
           STATE_BUCKET_PREFIX='subhampandamybucket'
    }
	
    stages {


 stage('********************************************Create Snapshot & Restore********************************************') 
          {  
            steps {
                 
                    image: 'hashicorp/terraform:latest',
                    cmd: 'terraform init  -input=false -reconfigure -backend-config=region="${AWS_REGION}" -backend-config=bucket="${STATE_BUCKET_PREFIX}" && \
		            terraform destroy -auto-approve && \
	               terraform plan -input=false -out=subham-tfplan.tfplan && \
                    terraform apply  subham-tfplan.tfplan',
                    aws: [
                        roleAccount:"${AWS_ACCOUNT}",
                        role: "${AWS_ROLE}",
                        region: "${AWS_REGION}"
                    ]
                 
            }
        }       
	}	
}
	   
