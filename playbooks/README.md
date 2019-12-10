# Ansible Playbooks for RFGames

A collection of A nsible playbooks for RFGames. Mostly to create and manage disposable Kubernetes cluster in DigitalOcean.

## Create droplet in DigitalOcean

```sh
export DO_DROPLET_NAME=<DROPLET_NAME>
export DO_SSH_KEY_IDS=<SSH_KEY_ID>

doctl compute droplet create $DO_DROPLET_NAME \
    --image=centos-7-x64 \
    --region=sgp1 \
    --size=s-2vcpu-2gb \
    --enable-ipv6 \
    --enable-monitoring \
    --enable-private-networking \
    --ssh-keys=$DO_SSH_KEY_IDS \
    --tag-names=rfgames,environment:production,role:kubernetes:master,role:kubernetes:worker
```

## Create Kubernetes cluster
```sh
ansible-playbook \
    --extra-vars cluster_name=rfgames \
    --extra-vars cluster_kubernetes_version=1.15.3 \
    --extra-vars cluster_apiserver_address=apis.rfgames.tw \
    kubernetes.yml
```

After creating the cluster, a kubeconfig would be available in current working directory.
