# Step to deploy Wordpress to K8S
## Chuẩn bị trước
Đảm bảo máy chạy đã cài kubectl <br>
Có thể sửa file passsql.yaml  thành password DB mình muốn <br>
Vào file storageclass_cloudian.yaml sửa config ( access key, secret key, endpoint url,..) <br>
## Deploy
```bash
git clone https://github.com/dungphung411/velero-backup-csc.git && cd ./velero-backup-csc/Wordpress_deploy_backup && sh ./deploy.sh
 ```