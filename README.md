# PaaS
Platform as a Service (PaaS)
[![Platform as a Service (PaaS)](https://github.com/Daniel-Perrinez/PaaS/actions/workflows/PaaS.yml/badge.svg?branch=main)](https://github.com/Daniel-Perrinez/PaaS/actions/workflows/PaaS.yml)

Code coverage
[![codecov](https://codecov.io/gh/Daniel-Perrinez/PaaS/graph/badge.svg?token=FPXJ9VPUN7)](https://codecov.io/gh/Daniel-Perrinez/PaaS)

# Workflow
- git checkout -b "my_branch_name"



# Add ArgoCD
https://argo-cd.readthedocs.io/en/stable/getting_started/#1-install-argo-cd
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl get svc -n argocd
kubectl port-forward -n argocd svc/argocd-server 8080:443
kubectl get secret argocd-initial-admin-secret -n argocd -o yaml
    admin
    echo <PW> | base64 --decode

ArgoUI: 127.0.0.1:8080

GitOps:
Push - for the app ci/cd deployment model
Pull - Agent is installed in the environment. Regularly checks the repo to compare the desired vs actual state of the cluster.
    a) Easy rollback / self healing.
    b) Single source of truth.
    c) Increased security - no one but the ci/cd pipeline is allowed to apply changes.
