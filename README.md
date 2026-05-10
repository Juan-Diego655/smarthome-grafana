# SmartHome IoT — Grafana OSS on Render

Grafana OSS instance with DynamoDB datasource for the IoT Smart Home project.

## Environment Variables (set in Render)

- `AWS_ACCESS_KEY_ID` — IAM access key for grafana-reader user
- `AWS_SECRET_ACCESS_KEY` — IAM secret key for grafana-reader user

## Deploy on Render

1. Connect this repo to Render
2. New → Web Service → Docker
3. Set environment variables
4. Deploy
