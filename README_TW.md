- [简体中文版](./README.md)
- 繁體中文版
- [English version](./README_EN.md)

# 繁星計畫 —— 伺服器模板倉庫

## 一、簡介
本倉庫為Minecraft（當個創世神）大型伺服器企劃——繁星計畫的伺服器模板倉庫，用於伺服器的快速初始化設定。
本倉庫隸屬於**Star River Studios星河工作室**，以**MIT協議**開源，**不僅適用於本工作室的伺服器部署，也歡迎所有Minecraft伺服器管理員和開發者免費使用、修改和分發**。
無論您是個人服主、小型社群還是專業伺服器團隊，都可以基於此模板快速架設自己的Minecraft伺服器。我們鼓勵使用者根據實際需求調整配置，也歡迎貢獻改進建議和功能擴充。

### 本儲存庫負責人
  - **涅槃**
    - **職位**：繁星計畫專案負責人
    - **遊戲ID**：MC_Nirvana
    - **電子郵件**：[mcnirvana@126.com](mailto:mcnirvana@126.com)

### 倉庫使用範圍
本倉庫的`Sub-Server`目錄下的內容適用於**Minecraft 1.21.1及後續版本**（本倉庫提供的是1.21.1 NeoForge、1.21.11 Paper、1.21.11 Fabric的相關配置模板），低於此版本可能會出現相容性問題。
本倉庫的`Velocity`目錄下的內容適用於**Velocity 3.4.0及後續版本**（本倉庫提供的是Velocity 3.4.0的相關模板），低於此版本可能會出現相容性問題。

## 二、重要目錄與檔案列表
  - `/<server-name>/ME-Frp`
    - 介紹：ME Frp配置檔案根目錄
    - 用途：用於存放Frp客戶端的配置檔案
  - `/<server-name>/Sub-Server`
    - 介紹：Minecraft伺服器檔案根目錄
    - 用途：用於存放Minecraft伺服器所需的各類檔案
  - `/<server-name>/Velocity`
    - 介紹：Velocity代理伺服器檔案根目錄
    - 用途：用於存放Velocity代理伺服器所需的各類檔案
  - `/<server-name>/docker-compose.yml`
    - 介紹：Docker容器編排檔案
    - 用途：用於配置Docker容器

## 三、環境與組件

### 執行環境要求：
  - **Java**
    - **要求**：需安裝Java21或更高版本
    - **作用**：用於Minecraft伺服器的執行
  - **Python**
    - **要求**：需安裝Python3.10或更高版本
    - **作用**：用於MCDReforged擴充框架的執行

### 前置組件要求：
  - **Docker**
    - **介紹**：一款容器化引擎
    - **作用**：用於容器化執行Minecraft伺服器
  - **MCDReforged**
    - **介紹**：一款採用Python編寫的Minecraft擴充框架
    - **作用**：用於Minecraft生電伺服器的功能擴充

## 四、授權條款
本專案採用[MIT授權條款](./LICENSE)開源。