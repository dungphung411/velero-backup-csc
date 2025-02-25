# File nay de install plugin velero cho k8s ( giup luu tru thong qua S3)

#AWS
# velero install \
#     --provider aws \
#     --plugins velero/velero-plugin-for-aws:v1.11.0 \   #latest version is 1.11.0 ( sau nay ko biet co update ko)
#     --bucket <BUCKET> \             # dien ten bucket da tao truoc do         
#     --backup-location-config region=ca-central-1 \         # dien region cua bucket
#     --use-volume-snapshots=false \
#     --secret-file ./credentials-velero \

#Cloudian backup old
    # velero install \
    # --provider aws \
    # --plugins velero/velero-plugin-for-aws:v1.11.0 \  #latest version is 1.11.0 ( sau nay ko biet co update ko)
    # --bucket velero-backup \                          # server cloudian cua Trucnv
    # --backup-location-config region=hn,s3ForcePathStyle=true,s3Url=http://10.200.3.161 \       # url endpoint cua cloudian
    # --use-volume-snapshots=false \
    # --secret-file ./credentials-velero
#Cloudian backup new 

  velero install \
    --provider aws \
    --plugins velero/velero-plugin-for-aws:v1.11.0 \  
    --bucket snapshot-backup \                         
    --backup-location-config region=hn,s3ForcePathStyle=true,s3Url=http://10.200.3.161 \    
    --use-volume-snapshots=true \
    --secret-file ./credentials-velero
