echo "Creating secrets..."
kubectl delete secret conductor-conf
kubectl create secret generic conductor-conf --from-file=config/secrets/conductor-conf.json
echo "Secrets created."
echo "Applying manifests..."
kubectl apply -f config/manifests/
echo "Manifests applied."
