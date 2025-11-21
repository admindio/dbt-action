
ARG DBT_VERSION=v1.10.0
FROM ghcr.io/dbt-labs/dbt-bigquery:1.10.0

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
