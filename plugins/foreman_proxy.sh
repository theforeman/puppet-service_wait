confine [ $SERVICE = 'foreman-proxy' ]

FOREMAN_PROXY_TEST_URL=${FOREMAN_PROXY_TEST_URL:-https://$HOSTNAME:9090/features}

service-wait () {
    wait-for-url $FOREMAN_PROXY_TEST_URL
}
