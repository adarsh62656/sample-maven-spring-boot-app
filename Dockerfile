FROM public.ecr.aws/lambda/java:11

# Copy function code and runtime dependencies from Maven layout
COPY target/springboot-aws-lambda-0.0.1-SNAPSHOT-aws.jar /var/task/lib/springboot-aws-lambda-0.0.1-SNAPSHOT-aws.jar
# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
#CMD [ "com.javatechie.aws.lambda.OrderHandler"]
COPY target/classes /var/task
#COPY target/dependency/* /var/task/lib/
CMD [ "com.javatechie.aws.lambda.OrderHandler"]