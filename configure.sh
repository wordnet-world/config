echo "Creating secrets..."
ls
ls secrets
cat secrets/conductor-conf.json
kubectl create secret generic conductor-conf --from-file=./secrets/conductor-conf.json
echo "Secrets created."
echo "Applying manifests..."
kubectl apply -f config/manifests/
echo "Manifests applied."
