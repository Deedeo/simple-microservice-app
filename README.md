## Application Documentation
 `This documentation provides an overview of a Flask-based microservice application along with the steps to run it locally, containerize it with Docker, deploy it to a Kubernetes cluster, and integrate it with Prometheus and Grafana for monitoring.`


Application Overview
The application is a simple Flask-based microservice that serves a few endpoints. It includes the following routes:

> /: The default route that returns a "Hello, World!" message.
> 
> /health: Returns a JSON response with the status "UP" to indicate the health of the microservice.
> 
> /home: Renders an HTML template with details about the host's hostname and IP address.




Running the Application Locally
To run the application locally, make sure you have Python installed, and follow these steps:

### Clone the repository from GitHub.
Navigate to the src directory .
Install the required dependencies by running: 

```python
pip install -r requirements.txt
```

Execute the following command:

```powershell
python app.py
```
The application will start running locally on http://localhost:5000/.



### Containerizing the Application with Docker

The application can be containerized using Docker to make it portable and easily deployable. Below are the steps to containerize the application:

Ensure you have Docker installed on your machine.
Create a Dockerfile in the project's root directory with the necessary configuration to package the application into a Docker image.
Build the Docker image by executing the appropriate docker build command.

```bash
docker build -t webapp .
```
After the build completes, run the container using docker run command.

```bash
docker run -p 80:5000 web
```


### Deploying to Kubernetes using Helm and Kubernestes manifest files
To deploy the application to a Kubernetes cluster using Helm. Ensure you have Kubernetes and Helm installed before proceeding.


Apply the manifest file to the Kubernetes cluster using kubectl apply command.

```bash
kubectl apply -f K8s-manifest/webapp-manifest
```
### Installing  the application with Helm Chart
To deploy the Flask microservice using Helm, follow these steps:


Package the application into a Helm chart. Create a values.yaml file to configure the deployment options (e.g., number of replicas, resource limits, etc.).
Run the following command to install the Helm chart:

```bash
helm install web ./path/to/helm/chart
```

Replace *web* with a suitable release name and ./path/to/helm/chart with the actual path to your Helm chart directory.

Integrating with Prometheus and Grafana
To monitor the Flask microservice using Prometheus and Grafana, follow these steps:

### Deploy Prometheus and Grafana to the Kubernetes cluster

By creating a manifest file  defining the Prometheus and grafana deployments and services manifest file.

Access the Grafana dashboard  using the LoadBalancer created with the Cloud provider or Port forward if the Service type is NodePort to set up data sources and create visualization panels for monitoring the application.

## Provisioning the EKS Cluster using Terraform
Before deploying the microservice to Kubernetes, the EKS cluster needs to be provisioned. Terraform is used for this purpose to automate the infrastructure setup on AWS. The steps to provision the EKS cluster are as follows:

 Terraform configuration within the terraform directory is used to define the AWS resources required for the EKS cluster, such as VPC, subnets, security groups, and EKS cluster configuration.

Run terraform init to initialize Terraform and set up the Terraform Cloud backend for collaboration.
Execute terraform apply to provision the EKS cluster on AWS.

### Terraform Cloud as backend

To enable collaboration on the Terraform project and store the state remotely, Terraform Cloud is used as the backend. This allows team members to work together and maintain the infrastructure state consistently.

### GitHub Actions CI/CD Pipeline
The GitHub Actions CI/CD pipeline automates the build, containerization, and deployment process and provision of the infrastructure used for this application.
The pipeline workflow typically consists of the following steps:

Building the Docker image and pushing it to a container registry.
Deploying the application to a Kubernetes cluster using Helm.
Deploying Prometheus and Grafana for monitoring.
By setting up the GitHub Actions workflow, you can streamline the application's development and deployment process.

Conclusion
This documentation provides a detailed overview of the Flask-based microservice application, including instructions to run it locally, containerize it with Docker, deploy it to a Kubernetes cluster using Helm, and integrate it with Prometheus and Grafana for monitoring. The provided instructions should help you set up the application and its deployment pipeline successfully.