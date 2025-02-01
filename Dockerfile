FROM quay.io/keycloak/keycloak:24.0.1
WORKDIR /opt/keycloak
RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized"]