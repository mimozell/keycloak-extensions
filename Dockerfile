FROM quay.io/keycloak/keycloak:17.0.0
ARG version
ENV KC_DB=postgres
ENV KC_HTTP_ENABLED=true
ENV KC_HTTP_RELATIVE_PATH=/auth

COPY build/libs/jars /opt/keycloak/providers/
COPY build/libs/keycloak-extensions.jar /opt/keycloak/providers/keycloak-extensions.jar

RUN /opt/keycloak/bin/kc.sh build

ENV JAVA_OPTS "-Dlog4j2.formatMsgNoLookups=true"
ENV STARTCOMMAND "start"

ENTRYPOINT /opt/keycloak/bin/kc.sh ${STARTCOMMAND}
