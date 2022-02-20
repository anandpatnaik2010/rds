pipeline{

    agent any
    tools {
        terraform 'terraform'
     }
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
                git branch: 'main', url: 'https://github.com/subhampanda/CI-CD.git'
            }
		  
		  
        }
stage ("terraform init")
	 {
            steps {
                sh 'terraform init'
		sh 'terraform plan -input=false -out=lm-mmx-tfplan.tfplan'
                sh 'terraform apply lm-mmx-tfplan.tfplan'
    
            }
        }
	    
	    
	    
	    
	}	
}
	   
