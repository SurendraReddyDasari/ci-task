

  - job: TerraformDestroy
    displayName: Terraform Destroy
  
    steps:
      - script: 'terraform -chdir=Terraform/main/ init -input=false'
        displayName: 'Init'
        env:
          ARM_SUBSCRIPTION_ID: $(ARM_SUBSCRIPTION_ID)
          ARM_TENANT_ID: $(ARM_TENANT_ID)
          ARM_CLIENT_ID: $(ARM_CLIENT_ID)
          ARM_CLIENT_SECRET: $(ARM_CLIENT_SECRET)

      - script: 'terraform -chdir=Terraform/main/ destroy -auto-approve -input=false'
        displayName: 'Destroy'
        env:
          ARM_SUBSCRIPTION_ID: $(ARM_SUBSCRIPTION_ID)
          ARM_TENANT_ID: $(ARM_TENANT_ID)
          ARM_CLIENT_ID: $(ARM_CLIENT_ID)
          ARM_CLIENT_SECRET: $(ARM_CLIENT_SECRET)