- [简体中文版](./README.md)
- [繁體中文版](./README_TW.md)
- English version

# Project Many Stars —— Server Template Repository

## I. Introduction
This repository is a server template repository for the Minecraft large-scale server project — Project Many Stars, designed for quick initialization setup of servers.
This repository belongs to **Star River Studios**, open-sourced under the **MIT License**, **not only applicable for our studio's server deployment, but also welcomes all Minecraft server administrators and developers to freely use, modify, and distribute**.
Whether you are an individual server owner, a small community, or a professional server team, you can quickly set up your own Minecraft server based on this template. We encourage users to adjust configurations according to actual needs, and we welcome contributions of improvement suggestions and feature extensions.

### Repository Owner
  - **Nirvana**
    - **Position**: Project Many Stars Project Lead
    - **Game ID**: MC_Nirvana
    - **Email**: [mcnirvana@126.com](mailto:mcnirvana@126.com)

### Repository Usage Scope
The contents under the `Sub-Server` directory of this repository are applicable for **Minecraft 1.21.1 and later versions** (this repository provides configuration templates for 1.21.1 NeoForge, 1.21.11 Paper, and 1.21.11 Fabric). Versions below this may encounter compatibility issues.
The contents under the `Velocity` directory of this repository are applicable for **Velocity 3.4.0 and later versions** (this repository provides templates for Velocity 3.4.0). Versions below this may encounter compatibility issues.

## II. Important Directories and File List
  - `/<server-name>/ME-Frp`
    - Description: ME Frp configuration file root directory
    - Purpose: Used to store Frp client configuration files
  - `/<server-name>/Sub-Server`
    - Description: Minecraft server file root directory
    - Purpose: Used to store various files required by the Minecraft server
  - `/<server-name>/Velocity`
    - Description: Velocity proxy server file root directory
    - Purpose: Used to store various files required by the Velocity proxy server
  - `/<server-name>/docker-compose.yml`
    - Description: Docker container orchestration file
    - Purpose: Used to configure Docker containers

## III. Environment and Components

### Runtime Environment Requirements:
  - **Java**
    - **Requirement**: Java 21 or higher version must be installed
    - **Purpose**: Used for running the Minecraft server
  - **Python**
    - **Requirement**: Python 3.10 or higher version must be installed
    - **Purpose**: Used for running the MCDReforged extension framework

### Prerequisite Components:
  - **Docker**
    - **Description**: A containerization engine
    - **Purpose**: Used for containerized operation of Minecraft servers
  - **MCDReforged**
    - **Description**: A Minecraft extension framework written in Python
    - **Purpose**: Used for feature extension of Minecraft Redstone technology servers

## IV. License
This project is open-sourced under the [MIT License](./LICENSE).