def bucketname = null
pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    parameters {
      string description: 'Name of the S3 Bucket', name: 'bucketName'
    }
    stages {
//         stage('Git checkout')
//         {
            
//                 steps{
//                     git branch: 'main', credentialsId: '02c515b6-f2d9-433b-914c-a18921a5dad1', url: 'https://github.com/AdityaNutulapati/test-s3-1'
                    
//                 }
//         }
        // stage('Input Bucket Name')
        // {
        //     steps{
        //         script {
        //     bucketName = input (
        //     message: 'Enter Name of the Bucket', 
        //     ok: 'Submit', 
        //     parameters: [string(name: 'bucketName', trim: true)]
        //   )
        // }
            // }
        // }
        stage('Terraform Init')
        {
            steps{
                sh label:'',script:'terraform init'
                sh "pwd"
                
            }
        }
        stage('Terraform Plan')
        {
            steps{
                withCredentials([[
                    $class:'AmazonWebServicesCredentialsBinding',
                    credentialsId:'aws-credentials',
                    accessKeyVariable:'AWS_ACCESS_KEY_ID',
                    secretKeyVariable:'AWS_SECRET_ACCESS_KEY']])
                    {
                        sh "terraform plan -var 'bucketname=${bucketName}'"
                    }
            }
        }
    
        // -var="bucketname=adityas3"
        stage('Terraform Apply')
        {
            steps{
            withCredentials([[
                    $class:'AmazonWebServicesCredentialsBinding',
                    credentialsId:'aws-credentials',
                    accessKeyVariable:'AWS_ACCESS_KEY_ID',
                    secretKeyVariable:'AWS_SECRET_ACCESS_KEY']])
                    {
                        sh "terraform apply -var 'bucketname=$bucketName' --auto-approve"
                    }
            }
        }
    }
}
// }
