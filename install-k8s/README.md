# install-k8s

Installs Kubernetes (kubelet, kubeadm, kubectl) and holds versions; optionally starts kubelet.

Usage

- hosts: all
  roles:
    - role: install-k8s
      vars:
        auto_run: true
