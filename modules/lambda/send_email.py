import boto3

ses = boto3.client("ses", region_name="us-east-1")

def lambda_handler(event, context):

    response = ses.send_email(
        Source="yaseenhamdy74@gmail.com",

        Destination={
            "ToAddresses": [
                "yaseenhamdy888@gmail.com"
            ]
        },

        Message={
            "Subject": {
                "Data": "Email From AWS SES"
            },

            "Body": {
                "Text": {
                    "Data": "Hello Yaseen, this email was sent using Amazon SES and AWS Lambda."
                }
            }
        }
    )

    return {
        "statusCode": 200,
        "messageId": response["MessageId"]
    }