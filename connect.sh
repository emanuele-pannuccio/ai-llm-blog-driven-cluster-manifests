# gcloud container clusters get-credentials autoblog-test-gke-cluster --zone europe-west4-a --project gcp-automated-blog-test
# kubectl config set-cluster gke_gcp-automated-blog-test_europe-west4-a_autoblog-test-gke-cluster --server=https://127.0.0.1:8443
# kubectl config set-cluster gke_gcp-automated-blog-test_europe-west4-a_autoblog-test-gke-cluster --tls-server-name=10.0.0.11

# gcloud compute ssh --zone "europe-west4-a" "autoblog-test-bastion-vm" --tunnel-through-iap --project "gcp-automated-blog-test" -- -fNL 8443:10.0.0.11:443

# Produzione

# gcloud container clusters get-credentials autoblog-prod-gke-cluster --zone europe-west4-a --project gcp-automated-blog-prod
# gcloud compute ssh --zone "europe-west4-a" "autoblog-prod-bastion-vm" --tunnel-through-iap --project "gcp-automated-blog-prod" -- -fNL 8445:10.0.1.11:443

# kubectl config set-cluster gke_gcp-automated-blog-prod_europe-west4-a_autoblog-prod-gke-cluster --server=https://127.0.0.1:8445
# kubectl config set-cluster gke_gcp-automated-blog-prod_europe-west4-a_autoblog-prod-gke-cluster --tls-server-name=10.0.1.11