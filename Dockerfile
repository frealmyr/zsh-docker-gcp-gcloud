FROM google/cloud-sdk:293.0.0-alpine AS gcloud

RUN apk add --update --no-cache vim nano \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/google-cloud-sdk/bin/gcloud"]
