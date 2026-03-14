FROM maven:3.9.9-eclipse-temurin-21

WORKDIR /app

COPY . .

WORKDIR /app/bank-backend/bank-backend

RUN mvn clean package -DskipTests

EXPOSE 8080

CMD ["java","-jar","target/*.jar"]