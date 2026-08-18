# dbt Labs stopped publishing official Docker images after dbt 1.9
# (ghcr.io/dbt-labs/dbt-bigquery has no 1.10+ tags), so we build a small
# image ourselves from a slim Python base and pip-install dbt-bigquery.
# dbt-bigquery pulls in the matching dbt-core.
FROM python:3.11-slim-bookworm

# dbt version to install. Override with --build-arg if needed.
ARG DBT_VERSION="1.12.*"

# git is required at runtime for `dbt deps` to clone package dependencies.
RUN apt-get update \
  && apt-get install -y --no-install-recommends git \
  && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir "dbt-bigquery==${DBT_VERSION}"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
