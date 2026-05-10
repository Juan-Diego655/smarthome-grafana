FROM grafana/grafana:latest

ENV GF_INSTALL_PLUGINS=grafana-dynamodb-datasource
ENV GF_SECURITY_ALLOW_EMBEDDING=true
ENV GF_AUTH_ANONYMOUS_ENABLED=true
ENV GF_AUTH_ANONYMOUS_ORG_ROLE=Viewer
ENV GF_SERVER_ROOT_URL=%(protocol)s://%(domain)s/
ENV GF_PATHS_PROVISIONING=/etc/grafana/provisioning

USER root
RUN mkdir -p /etc/grafana/provisioning/datasources
RUN mkdir -p /etc/grafana/provisioning/dashboards

COPY provisioning/datasources/dynamodb.yaml /etc/grafana/provisioning/datasources/
COPY provisioning/dashboards/dashboard.yaml /etc/grafana/provisioning/dashboards/
COPY dashboards/ /var/lib/grafana/dashboards/

USER grafana
