FROM grafana/grafana:11.4.0

ENV GF_SECURITY_ALLOW_EMBEDDING=true
ENV GF_AUTH_ANONYMOUS_ENABLED=true
ENV GF_AUTH_ANONYMOUS_ORG_ROLE=Viewer
ENV GF_INSTALL_PLUGINS=yesoreyeram-infinity-datasource
ENV GF_PLUGINS_ALLOW_LOADING_UNSIGNED_PLUGINS=yesoreyeram-infinity-datasource
ENV GF_SECURITY_ADMIN_PASSWORD=smarthome2026
ENV GF_SERVER_ROOT_URL=https://smarthome-grafana.onrender.com

USER root
RUN mkdir -p /var/lib/grafana/dashboards

COPY provisioning /etc/grafana/provisioning
COPY dashboards /var/lib/grafana/dashboards

RUN chown -R grafana:root /var/lib/grafana /etc/grafana/provisioning

USER grafana
