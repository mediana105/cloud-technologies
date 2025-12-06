# Развертывание приложения в Kubernetes

## Развертывание
### 1. Создание namespace
```bash
kubectl create namespace my-app
```

### 2. Применение всех манифестов
```bash
kubectl apply -f manifests/ -n my-app
```

## Проверка

### 1. Получение EXTERNAL IP
```bash
kubectl get service ingress-nginx-controller -n ingress-nginx
```

### 2. Тестирование приложения
```bash
curl http://$EXTERNAL_IP/
curl http://$EXTERNAL_IP/api
```