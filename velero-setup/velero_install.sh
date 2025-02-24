# Vao thu muc muon tao file velero 
# Chon phien ban velero minh muon tai o day : https://github.com/vmware-tanzu/velero/releases
mkdir velero && cd velero
wget https://github.com/vmware-tanzu/velero/releases/download/v1.5.3/velero-v1.5.3-linux-amd64.tar.gz
tar xzvf velero-v1.5.3-linux-amd64.tar.gz && cd velero-v1.5.3-linux-amd64   # tuy vao version minh tai ma ten file khac nhau, luc y tu ls roi xem ten file 

mv velero /usr/local/bin/
velero version