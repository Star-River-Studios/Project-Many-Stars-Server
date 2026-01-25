- 简体中文版
- [繁體中文版](./README_TW.md)
- [English version](./README_EN.md)

# 繁星计划 —— 服务端模板仓库

## 一、简介
本仓库为Minecraft（我的世界）大型服务器企划——繁星计划的服务端模板仓库，用于服务器的快速初始化设置。
本仓库隶属于**Star River Studios星河工作室**，以**MIT协议**开源，**不仅适用于本工作室的服务器部署，也欢迎所有Minecraft服务器管理员和开发者免费使用、修改和分发**。
无论您是个人服主、小型社区还是专业服务器团队，都可以基于此模板快速搭建自己的Minecraft服务器。我们鼓励使用者根据实际需求调整配置，也欢迎贡献改进建议和功能扩展。

### 本存储库负责人
  - **涅槃**
    - **职位**：繁星计划项目负责人
    - **游戏ID**：MC_Nirvana
    - **电子邮件**：[mcnirvana@126.com](mailto:mcnirvana@126.com)

### 仓库使用范围
本仓库的`Sub-Server`目录下的内容适用于**Minecraft 1.21.1及后续版本**（本仓库提供的是1.21.1 NeoForge、1.21.11 Paper、1.21.11 Fabric的相关配置模板），低于此版本可能会出现兼容性问题。
本仓库的`Velocity`目录下的内容适用于**Velocity 3.4.0及后续版本**（本仓库提供的是Velocity 3.4.0的相关模板），低于此版本可能会出现兼容性问题。

## 二、重要目录与文件列表
  - `/<server-name>/ME-Frp`
    - 介绍：ME Frp配置文件根目录
    - 用途：用于存放Frp客户端的配置文件
  - `/<server-name>/Sub-Server`
    - 介绍：Minecraft服务端文件根目录
    - 用途：用于存放Minecraft服务端所需的各类文件
  - `/<server-name>/Velocity`
    - 介绍：Velocity代理服务端文件根目录
    - 用途：用于存放Velocity代理服务端所需的各类文件
  - `/<server-name>/docker-compose.yml`
    - 介绍：Docker容器编排文件
    - 用途：用于配置Docker容器

## 三、环境与组件

### 运行环境要求：
  - **Java**
    - **要求**：需安装Java21或更高版本
    - **作用**：用于Minecraft服务端的运行
  - **Python**
    - **要求**：需安装Python3.10或更高版本
    - **作用**：用于MCDReforged扩展框架的运行

### 前置组件要求：
  - **Docker**
    - **介绍**：一款容器化引擎
    - **作用**：用于容器化运行Minecraft服务器
  - **MCDReforged**
    - **介绍**：一款采用Python编写的Minecraft扩展框架
    - **作用**：用于Minecraft生电服务器的功能扩展

## 四、许可证
本项目采用[MIT许可证](./LICENSE)开源。