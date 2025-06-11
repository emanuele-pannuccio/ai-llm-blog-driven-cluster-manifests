# gcloud container clusters get-credentials autoblog-test-gke-cluster --zone europe-west4-a --project gcp-automated-blog-test
#   export PRIVATE_IP_GKE_CLUSTER=$(gcloud container clusters describe autoblog-test-gke-cluster \
#     --project "gcp-automated-blog-test" \
#     --zone europe-west4-a \
#     --format="get(privateClusterConfig.privateEndpoint)")

# kubectl config set-cluster gke_gcp-automated-blog-test_europe-west4-a_autoblog-test-gke-cluster --server=https://127.0.0.1:8443
# kubectl config set-cluster gke_gcp-automated-blog-test_europe-west4-a_autoblog-test-gke-cluster --tls-server-name=10.0.0.10

gcloud compute ssh --zone "europe-west4-a" "autoblog-test-bastion-vm" --tunnel-through-iap --project "gcp-automated-blog-test" -- -fNL 8443:10.0.0.10:443

# Produzione

# gcloud container clusters get-credentials autoblog-prod-gke-cluster --zone europe-west4-a --project gcp-automated-blog-prod
# export PRIVATE_IP_GKE_CLUSTER=$(gcloud container clusters describe autoblog-prod-gke-cluster \
# --project "gcp-automated-blog-prod" \
# --zone europe-west4-a \
# --format="get(privateClusterConfig.privateEndpoint)")

# gcloud compute ssh --zone "europe-west4-a" "autoblog-prod-bastion-vm" --tunnel-through-iap --project "gcp-automated-blog-prod" -- -fNL 8445:$PRIVATE_IP_GKE_CLUSTER:443

# kubectl config set-cluster gke_gcp-automated-blog-prod_europe-west4-a_autoblog-prod-gke-cluster --server=https://127.0.0.1:8445
# kubectl config set-cluster gke_gcp-automated-blog-prod_europe-west4-a_autoblog-prod-gke-cluster --tls-server-name=10.0.1.11

#   export PRIVATE_IP_GKE_CLUSTER=$(gcloud container clusters describe autoblog-test-gke-cluster \
#     --project "gcp-automated-blog-test" \
#     --zone europe-west4-a \
#     --format="get(privateClusterConfig.privateEndpoint)")
