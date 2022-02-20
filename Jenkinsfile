pipeline {

  agent any
  parameters {
    choice(
      choices: ['All', 'Create_Snapshot', 'Share_Snapshot', 'Copy_Snapshot_Target', 'Delete_Target_DB', 'Restore_Target_DB', 'Reset_Password', 'Post_DB_Refresh'],
      description: 'DB refresh stages',
      name: 'BUILD_TYPE'
    )

  }
  environment {

    SOURCE_AWS_ROLE = "source-rds-role"
    TARGET_AWS_ROLE = "lm-mmx-preprod-cicd-jenkins"
    AWS_REGION = 'us-east-1'
    SOURCE_AWS_ACCOUNT = '734352018822'
    TARGET_AWS_ACCOUNT = '761666749000'
    AWS_ENVIRONMENT = "prod"
    STACK_NAME = "test"
    STATE_BUCKET_PREFIX = 'rds-test-2022'
  }

  stages {
    //Create Snapshot at the source
    stage('******************************************* Create Snapshot at Source ********************************************') {
      steps {
        genericBuild(
          image: 'hashicorp/terraform:latest',
          cmd: 'cd ./rds && \
   terraform init  -input=false -reconfigure -backend-config=region="${AWS_REGION}" -backend-config=bucket="${STATE_BUCKET_PREFIX}"-"${AWS_ENVIRONMENT}"-state -backend-config=workspace_key_prefix="${APP_NAME}"-"${AWS_ENVIRONMENT}" -backend-config=key=lm-mmx-dni && \
   terraform workspace select ${BRANCH_NAME} || terraform workspace new ${BRANCH_NAME} && \
   terraform destroy -auto-approve && \
   terraform plan -input=false -out=lm-mmx-tfplan.tfplan -var stack="${BRANCH_NAME}" && \
   terraform apply lm-mmx-tfplan.tfplan',
          aws: [
            roleAccount: "${SOURCE_AWS_ACCOUNT}",
            role: "${SOURCE_AWS_ROLE}",
            region: "${AWS_REGION}"
          ]
        )
      }
    }
