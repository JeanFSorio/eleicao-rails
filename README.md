# Histórico Eleições

This project goal was to make a log of every minute update of an API, [this API](https://resultados.tse.jus.br/oficial/ele2022/545/dados-simplificados/br/br-c0001-e000545-r.json) was showing the current progress in the electoral results. 

So from time to time I saved in a mongodb a log with my [python observer](https://github.com/JeanFSorio/python-api-observer).

Video example of the website:
![website-example](https://github.com/JeanFSorio/eleicao-rails/assets/56233529/78908d3c-4fe8-4de6-a3bf-13d7fc570678)

# Instalation

If you want to try it yourself you can download the project and run the docker compose

```
docker-compose up --build
```

It will create the rails app and mongo database.

# Final Notes

Remember it was a side project that I did during the elections, everything was so in rush to get the data in the right moment and was my first time doing rails and mongodb, was a good challenge.
