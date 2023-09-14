# Commands
```
gcloud alpha infra-manager deployments apply projects/infrastructure-manager-poc/locations/us-central1/deployments/poc \
      --service-account=projects/infrastructure-manager-poc/serviceAccounts/infrastructure-manager@infrastructure-manager-poc.iam.gserviceaccount.com \
      --git-source-repo=https://github.com/muffl0n/infrastructure-manager-poc.git \
      --git-source-directory="" \
      --git-source-ref=main
//      --input-values=project_id=infrastructure-manager-poc,network_name=quickstart-vpc
```

```
watch "gsutil cat `gsutil ls gs://1036527382751-us-central1-blueprint-config/poc/r-10/logs` | tail -40"
```

```
gcloud alpha infra-manager revisions list --deployment=projects/infrastructure-manager-poc/locations/us-central1/deployments/poc
```

```
gcloud alpha infra-manager revisions describe projects/infrastructure-manager-poc/locations/us-central1/deployments/poc/revisions/r-10
```

```
gcloud alpha infra-manager resources list --revision=projects/infrastructure-manager-poc/locations/us-central1/deployments/poc/revisions/r-10
```

```
gcloud alpha infra-manager revisions export-statefile projects/infrastructure-manager-poc/locations/us-central1/deployments/poc/revisions/r-10
```

```
http -p b `gcloud alpha infra-manager revisions export-statefile projects/infrastructure-manager-poc/locations/us-central1/deployments/poc/revisions/r-10 2>/dev/null | cut -f 2 -d ' '`
```

# Offene Punkte
* WIF um Deployment anzustoßen
* ...

# Links
* https://cloud.google.com/infrastructure-manager/docs/locations
* https://cloud.google.com/blog/products/management-tools/introducing-infrastructure-manager-powered-by-terraform/
