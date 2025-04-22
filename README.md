# k8s-workload-template

This repository provides a template for creating Kubernetes workloads, including **Deployments** and **CronJobs**. It includes pre-configured Kustomize files, Skaffold integration, and a `customize` script to quickly set up your application.

> **Note**: The primary purpose of this repository is to enhance my personal containerized development workflow. It is tailored to my specific use cases and may not be well-suited for public or general-purpose use.

## Features

- **Kubernetes Workload Support**: Pre-configured templates for Deployments and CronJobs.
- **Customizable**: A `customize` script to tailor the repository to your application's name and workload type.
- **Pre-configured Kustomize**: Includes base, dev, and prod configurations for Kubernetes.
- **Skaffold Integration**: Simplifies building, pushing, and deploying your containerized application.

## Getting Started

Follow these steps to use this template:

### 1. Create a New Repository
Click the "Use this template" button to create a new repository based on this template.

### 2. Clone the Repository
Clone the newly created repository to your local machine:
```bash
git clone <your-repo-url>
cd <your-repo-name>
```

### 3. Customize the Repository
Run the `customize` script to set up your application name and workload type:
```bash
./customize <workload-type> <app-name>
```
- `<workload-type>`: The type of Kubernetes workload. Options are:
    - `deployment`: For a Deployment.
    - `cronjob`: For a CronJob.
- `<app-name>`: The name of your application.

The script will:
- Update configuration files with your application name.
- Set up the appropriate Kustomize files for your workload type.
- Replace this README with a customized version.
- Remove the `customize` script from the repository.

### 4. Update Configuration Files

Modify the `Dockerfile` Kustomize files, and entrypoint script as needed to suit your application's requirements.

### 5. Build and Deploy

Use Skaffold to build and run your application:
```bash
skaffold dev -p <profile>
```
