#Uses the official openJDK image
FROM openjdk:latest

# sets the working directory
WORKDIR /app

#copy all files into container
COPY /java-sample /app

#Compiles the java program
RUN javac HelloWorldNew.java

# Command to run the java program
CMD ["java", "HelloWorldNew"]