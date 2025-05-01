# gcloud container clusters get-credentials autoblog-prod-gke-cluster --zone europe-west4-a --project gcp-automated-blog-prod
# gcloud compute ssh --zone "europe-west4-a" "autoblog-prod-bastion-vm" --tunnel-through-iap --project "gcp-automated-blog-prod" -- -fNL 8443:10.0.1.11:443

# gcloud container clusters get-credentials autoblog-test-gke-cluster --zone europe-west4-a --project gcp-automated-blog-test
# gcloud compute ssh --zone "europe-west4-a" "autoblog-test-bastion-vm" --tunnel-through-iap --project "gcp-automated-blog-test" -- -fNL 8443:10.0.0.11:443


kubectl kustomize overlays/${1-test}/ | kubectl apply -f -


kubectl config set-cluster ${{ env.CLUSTER_NAME }} --server=https://127.0.0.1:8443
kubectl config set-cluster ${{ env.CLUSTER_NAME }} --tls-server-name=$PRIVATE_IP_GKE_CLUSTER
