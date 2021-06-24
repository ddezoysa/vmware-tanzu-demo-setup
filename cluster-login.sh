export KUBECTL_VSPHERE_USERNAME=$1
export KUBECTL_VSPHERE_PASSWORD=1234Qwer$
export SUPERVISOR_API=10.0.10.30
export NAMESPACE=$2
export CLUSTER_NAME=$3

export KUBECONFIG=kubeconfig/${KUBECTL_VSPHERE_USERNAME}-${NAMESPACE}-${CLUSTER_NAME}.kubeconfig.yaml

kubectl vsphere login --server=${SUPERVISOR_API} --vsphere-username=${KUBECTL_VSPHERE_USERNAME}@vsphere.local --tanzu-kubernetes-cluster-namespace=${NAMESPACE} --tanzu-kubernetes-cluster-name=${CLUSTER_NAME} --insecure-skip-tls-verify
kubectl config use-context ${CLUSTER_NAME}
