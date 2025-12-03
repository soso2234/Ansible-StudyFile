import boto3

client = boto3.client('iam')

create_test = client.create_user(
    UserName='test',
)

print(create_test)