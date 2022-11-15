
## Команды:
```
docker build --tag=stocks_im:1.0 .

docker run --name stocks -d -p 6003:8111 stocks_im:1.0
```
```
curl localhost:6003/api/v1/stocks/

curl localhost:6003/api/v1/products/
```

