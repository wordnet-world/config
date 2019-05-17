echo "Creating secrets..."
kubectl delete secret conductor-conf
kubectl create secret generic conductor-conf --from-file=config/secrets/conductor-conf.json
kubectl create secret generic dumby-neo4j-cypher --from-file=config/secrets/dumby_neo4j.cypher
echo "Secrets created."
echo "Applying manifests..."
kubectl apply -f config/manifests/
echo "Manifests applied."
