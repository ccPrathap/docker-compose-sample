# docker-compose
Clone/Download this repository to your local machine

Navigate to the same folder in docker terminal and issue below command:
docker-compose up -d
(It will take some time initially to pull and build the images)

Once it is done, execute below command for data import:
docker exec -i mysql_db mysql -uroot -ppassword < dump.sql

Do port mapping/forwarding (8080) in Oracle VM under 'Settings -> Network -> Advanced -> Port Forwarding' and open the below url:
http://localhost:8080/pizza-service/cts/pizza/details
(You will see the json data of pizza details)
