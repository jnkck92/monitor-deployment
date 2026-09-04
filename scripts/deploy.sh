# deploy.sh
#!/bin/bash
set -e

# .env laden
source .env

echo "Deploying to $SERVER_HOST..."
ssh $SERVER_USER@$SERVER_HOST "cd $DEPLOY_PATH && ./scripts/update.sh"
echo "Deployment complete!"
