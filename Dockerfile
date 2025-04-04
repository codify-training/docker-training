#Uses the official openJDK image
FROM openjdk:latest

# sets the working directory
WORKDIR /app

ARG SOURCE_FOLDER

#copy all files into container
COPY ${SOURCE_FOLDER} /app/

#Compiles the java program
RUN javac HelloWorldNew.java

# Command to run the java program
CMD ["java", "HelloWorldNew"]