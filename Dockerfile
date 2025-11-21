
ARG DBT_VERSION=v1.7.3
FROM ghcr.io/dbt-labs/dbt-bigquery:1.8.2

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
