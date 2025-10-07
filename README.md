# Cow wisdom web server

## Prerequisites

```
sudo apt install fortune-mod cowsay -y
```

## How to use?

1. Run `./wisecow.sh`
2. Point the browser to server port (default 4499)

## What to expect?
![wisecow](https://github.com/nyrahul/wisecow/assets/9133227/8d6bfde3-4a5a-480e-8d55-3fef60300d98)

# Problem Statement
Deploy the wisecow application as a k8s app

## Requirement
1. Create Dockerfile for the image and corresponding k8s manifest to deploy in k8s env. The wisecow service should be exposed as k8s service.
2. Github action for creating new image when changes are made to this repo
3. [Challenge goal]: Enable secure TLS communication for the wisecow app.

## Expected Artifacts
1. Github repo containing the app with corresponding dockerfile, k8s manifest, any other artifacts needed.
2. Github repo with corresponding github action.
3. Github repo should be kept private and the access should be enabled for following github IDs: nyrahul



---

## Developer Notes (by Tripti)

This repository was enhanced and containerized
- Containerized the Wisecow application using a custom Dockerfile.
- Created Kubernetes manifests for deployment and service exposure.
- Integrated CI/CD automation with GitHub Actions.
- Added `app_health.sh` and `system_health.sh` monitoring scripts.
- Worked fully inside **WSL (Ubuntu on Windows)** to avoid using local device storage.
- Successfully deployed and validated the application functionality.

**Challenge Goals Completed:**
-  Dockerization 
-  Kubernetes Deployment 
-  CI/CD Integration 
-  Application Health Check Scripts 

Repository link: [https://github.com/triptipnd/wisecow-assg]
