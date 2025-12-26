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


## Развертывание с использованием Helm (Часть 2)
### 1. Установка Helm chart
Перейдите в директорию с Helm chart
```bash
cd helm-charts/my-web-app
```

Установите приложение
```bash
helm install my-release ./my-web-app -n production --create-namespace
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