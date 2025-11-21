
ARG DBT_VERSION=v1.10.15
FROM ghcr.io/dbt-labs/dbt-bigquery:1.10.2

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
