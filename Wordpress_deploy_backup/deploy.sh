#!bin/bash
kubectl apply -f storageclass_cloudian.yaml
kubectl apply -f namespace.yaml
kubectl apply -f pv_mysql.yaml
kubectl apply -f pv_wordpress.yaml
kubectl apply -f pvc_sql.yaml
kubectl apply -f pvc_wordpress.yaml
kubectl apply -f deployment_sql.yaml
kubectl apply -f deployment_wordpress.yaml
kubectl apply -f mysql_service.yaml
kubectl apply -f wordpress_service.yaml
kubectl apply -f passsql.yaml
