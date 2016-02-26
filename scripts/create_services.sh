cf d fortune-service --f
cf d fortune-ui --f
cf ds config-service --f
cf ds service-registry --f
cf ds circuit-breaker --f
cf cups config-service -p '{"tag":"config","uri":"http://config-server.local.micropcf.io"}'
cf cups service-registry -p '{"tag":"eureka","uri":"https://eureka.local.micropcf.io"}'
cf cups circuit-breaker -p '{"uri":"https://hystrix-dashboard.local.micropcf.io"}'
#cf cs p-mysql 512mb fortunes-db
