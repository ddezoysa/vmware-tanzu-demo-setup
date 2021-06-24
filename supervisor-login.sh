export KUBECTL_VSPHERE_USERNAME=$1
export KUBECTL_VSPHERE_PASSWORD=1234Qwer$
export SUPERVISOR_API=10.0.10.30

export KUBECONFIG=kubeconfig/${KUBECTL_VSPHERE_USERNAME}.kubeconfig.yaml

kubectl vsphere login --server=${SUPERVISOR_API} --vsphere-username=${KUBECTL_VSPHERE_USERNAME}@vsphere.local --insecure-skip-tls-verify
kubectl config use-context ${SUPERVISOR_API}
