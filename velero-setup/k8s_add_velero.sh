# file nay de install plugin velero cho k8s ( giup luu tru thong qua S3)
./velero install \
    --provider aws \
    --plugins velero/velero-plugin-for-aws:v1.1.0 \
    --bucket <BUCKET> \
    --backup-location-config region=ca-central-1 \
    --use-volume-snapshots=false \
    --secret-file ./credentials-velero \
    --use-restic