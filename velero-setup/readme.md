# Backup and Restore Kubernetes Applications Using velero

[![Watch the video](https://img.youtube.com/vi/hV98fuCQJ48/maxresdefault.jpg)](https://youtu.be/hV98fuCQJ48)


## Các lệnh velero cơ bản 
   ```bash
   kubectl get namespace        # kiem tra xem co namespace velero chua
   velero get backup-location # kiem tra xem da ket noi voi backup storage chua (s3)
   velero backup create <NAME> --selector app=<NAME> # co the la bat cu loai kind nao : storage, pvc, deployment, svc, secret, metric,...
   velero backup create <NAME> --include-namespaces <NAMESPACE> # recommend dung cai nay
   velero backup describe <NAME> #hien thi thong tin ve backup
   velero backup get #list tat ca cac backup o kho luu tru (s3)

```
## Các lệnh velero với restore 
```bash
velero restore create --from-backup <NAME> # restore bản backup
velero get restore # list cac ban restore 
velero restore logs <RESTORE_NAME>      # doc logs ban restore minh muon

```

## Setup velero 
Đảm bảo máy chạy đã cài kubectl, và đã kết nối với cluster K8S cần backup
```bash
#vao folder minh muon clone ve, neu bi loi hay chay lai voi quyen root
git clone https://github.com/dungphung411/velero-backup-csc.git
cd ./velero-backup-csc/velero-setup 
chmod +x k8s_add_velero.sh && chmod velero_install.sh
sh ./velero_install.sh && sh ./k8s_add_velero.sh
```
