FROM public.ecr.aws/lambda/java:11

# Copy function code and runtime dependencies from Maven layout
COPY target/springboot-aws-lambda-0.0.1-SNAPSHOT-aws.jar springboot-aws-lambda-0.0.1-SNAPSHOT-aws.jar
# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
#CMD [ "com.javatechie.aws.lambda.OrderHandler"]
ENTRYPOINT ["java", "-jar","target/springboot-aws-lambda-0.0.1-SNAPSHOT-aws"]