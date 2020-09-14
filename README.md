# Spring Boot App with Prometheus and Grafana

This demo project contains an example setup of Prometheus and Grafana to monitor Spring Boot app.

The project contains a default Grafana Prometheus datasource and scrapes the Spring Boot project and Prometheus server 
for monitoring information.

If you want to login to Grafana you can use the `admin / password` combination in default.

## Start up the applications

First build the spring boot application:

```bash
mvn clean package
```

Then, when the application has been build, we can start our services by running:

```bash
docker-compose up
```

After all services have started successfully, you can navigate to the following urls:

- Spring Boot app - http://localhost:8080/test
- Prometheus      - http://localhost:9090/
- Grafana         - http://localhost:3000/

We can stop % remove containers by running:

```bash
docker-compose down
```