# export EC2_HOME=/usr/local/aws/ec2
# export AWS_IAM_HOME=/usr/local/aws/iam
# export AWS_RDS_HOME=/usr/local/aws/rds
# export AWS_ELB_HOME=/usr/local/aws/elb
# export AWS_CLOUDFORMATION_HOME=/usr/local/aws/cfn
# export AWS_AUTO_SCALING_HOME=/usr/local/aws/as
# export CS_HOME=/usr/local/aws/cloudsearch
# export AWS_CLOUDWATCH_HOME=/usr/local/aws/cloudwatch
# export AWS_ELASTICACHE_HOME=/usr/local/aws/elasticache
# export AWS_SNS_HOME=/usr/local/aws/sns
# export AWS_ROUTE53_HOME=/usr/local/aws/route53
# export AWS_CLOUDFRONT_HOME=/usr/local/aws/cloudfront

# for i in $EC2_HOME $AWS_IAM_HOME $AWS_RDS_HOME $AWS_ELB_HOME   $AWS_CLOUDFORMATION_HOME $AWS_AUTO_SCALING_HOME $CS_HOME   $AWS_CLOUDWATCH_HOME $AWS_ELASTICACHE_HOME $AWS_SNS_HOME   $AWS_ROUTE53_HOME $AWS_CLOUDFRONT_HOME /usr/local/aws/s3
# do
#   PATH=$i/bin:$PATH
# done
PATH=/usr/local/aws/elasticbeanstalk/eb/linux/python2.7:$PATH
# PATH=/usr/local/aws/elasticmapreduce:$PATH
# PATH=/usr/local/aws/datapipeline:$PATH

export EC2_PRIVATE_KEY=$(echo $HOME/.aws-default/pk-*.pem)
export EC2_CERT=$(echo $HOME/.aws-default/cert-*.pem)
export AWS_CREDENTIAL_FILE=$HOME/.aws-default/aws-credential-file.txt
export ELASTIC_MAPREDUCE_CREDENTIALS=$HOME/.aws-default/aws-credentials.json
export DATA_PIPELINE_CREDENTIALS=$HOME/.aws-default/aws-credentials.json
