#!/bin/bash

# 定义基本参数
memory="1024M"
jarFile="velocity-server.jar"

# 定义高级参数
jvmArgs=(
    # === JVM 设置 ===
    "-XX:+UnlockExperimentalVMOptions" # 启用实验性功能
    "-Djava.net.preferIPv4Addresses=true" # 启用 IPv4 优先

    # === 垃圾收集器 ===
    "-XX:+UseG1GC" # 使用 G1 垃圾收集器
    "-XX:MaxGCPauseMillis=25" # 网关停顿要极短，设为 10ms
    "-XX:G1HeapRegionSize=4M" # 修正：1G 内存必须用小的 Region (4M)
    "-XX:ParallelGCThreads=2" # Velocity 主要是 IO，2 个回收线程足够
    "-XX:ConcGCThreads=1" # 后台只开 1 个线程，绝不抢占 CPU

    # === 内存与系统稳定性 ===
    "-XX:+AlwaysPreTouch" # 预分配内存，提高启动速度
    "-XX:+UseContainerSupport" # 启用容器内存感知
    "-XX:+DisableExplicitGC" # 禁止显式调用 System.gc()，避免插件或服务器触发 Full GC

    # === 控制台与日志 ===
    "-Dfile.encoding=UTF-8" # 设置文件编码为 UTF-8
    "-Dterminal.ansi=true" # 启用控制台 ANSI 颜色支持，便于日志可读性
    "-Dlog4j2.formatMsgNoLookups=true"

    # === 平台特定优化 ===
    "-Dvelocity.max-known-packs=2048" # Velocity 已知数据包数量上限
    "-Dvelocity.max-plugin-message-payload-size=2097152" # Velocity 插件消息负载上限（单位：字节）
)
authlibArgs=()
agentArgs=()
programArgs=()

# 执行 Java 命令
sleep 0.5
echo "正在启动 Minecraft 服务器..."
sleep 0.5
echo "正在设定基本参数..."
sleep 0.5
echo "已设定内存：${memory}"
sleep 0.5
echo "已设定JAR核心文件：${jarFile}"
sleep 0.5
echo "正在设定高级参数..."
sleep 0.5
echo "已设定JVM参数：${jvmArgs[*]:-无}"
sleep 0.5
echo "已设定外置登录参数：${authlibArgs[*]:-无}"
sleep 0.5
echo "已设定代理参数：${agentArgs[*]:-无}"
sleep 0.5
echo "已设定程序参数：${programArgs[*]:-无}"
sleep 0.5
echo "全部参数设定完成，正在启动..."
exec java "-Xmx${memory}" "-Xms${memory}" "${jvmArgs[@]}" "${authlibArgs[@]}" "${agentArgs[@]}" -jar "${jarFile}" "${programArgs[@]}"