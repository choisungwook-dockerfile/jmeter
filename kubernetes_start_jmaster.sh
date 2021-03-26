export JMETER_MASTER=$(kubectl get pods -n jmeter -lapp.kubernetes.io/component=master -o jsonpath='{.items[*].metadata.name}')
export JMETER_SERVERS=$(kubectl get pods -n jmeter -lapp.kubernetes.io/component=server -o jsonpath='{.items[*].status.podIP}' | tr ' ' ',')
kubectl exec -it $JMETER_MASTER -n jmeter -- jmeter -n -t /jmeter/apache-jmeter-3.3/script.jmx -R $JMETER_SERVERS