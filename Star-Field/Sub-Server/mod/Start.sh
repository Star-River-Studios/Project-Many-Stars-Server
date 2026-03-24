#!/bin/bash

# 定义基本参数
memory="20480M"
argsFile="@libraries/net/neoforged/neoforge/21.1.221/unix_args.txt"

# 定义高级参数
jvmArgs=(
    # === JVM 设置 ===
    "-XX:+UnlockExperimentalVMOptions" # 启用实验性功能
    "-Djava.net.preferIPv4Addresses=true" # 启用 IPv4 优先

    # === 垃圾收集器 ===
    "-XX:+UseG1GC" # 使用 G1 垃圾收集器
    "-XX:MaxGCPauseMillis=50" # 设置停顿时间，可防止 OOM
    "-XX:G1HeapRegionSize=32M" # 修正：20G 堆用 32M 更稳健
    "-XX:ParallelGCThreads=4" # 并行线程（STW时使用）
    "-XX:ConcGCThreads=2" # 关键：并发线程（不卡服时后台运行），给 CPU 留余地
    "-XX:InitiatingHeapOccupancyPercent=15" # 15% 就开始后台回收，防患于未然
    "-XX:G1NewSizePercent=35" # 确保年轻代够大，模组的小对象直接在年轻代被干掉
    "-XX:G1MaxNewSizePercent=40" # 设置堆内存中新生代的占比
    "-XX:G1ReservePercent=20" # 预留 20% 缓冲区，防止 OOM
    "-XX:+ParallelRefProcEnabled" # 启用并行垃圾回收

    # === 内存与系统稳定性 ===
    "-XX:+AlwaysPreTouch" # 预分配内存，提高启动速度
    "-XX:+UseContainerSupport" # 启用容器内存感知
    "-XX:+DisableExplicitGC" # 禁止显式调用 System.gc()，避免插件或服务器触发 Full GC（调试/诊断时如有问题可暂时移除）

    # === 控制台与日志 ===
    "-Dfile.encoding=UTF-8" # 设置文件编码为 UTF-8
    "-Dterminal.ansi=true" # 启用控制台 ANSI 颜色支持，便于日志可读性
    "-Dlog4j2.formatMsgNoLookups=true" # Log4j2 安全参数，防止远程代码执行漏洞

    # === 平台特定优化 ===
    "-Dmixin.debug.export=false" # 禁止 Mixin 导出调试信息，减少启动日志杂乱
)
authlibArgs=()
agentArgs=()
programArgs=(
    "nogui"
)

# 执行 Java 命令
sleep 0.5
echo "正在启动 Minecraft 服务器..."
sleep 0.5
echo "正在设定基本参数..."
sleep 0.5
echo "已设定内存：${memory}"
sleep 0.5
echo "已设定启动参数文件：${argsFile}"
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
exec java "-Xmx${memory}" "-Xms${memory}" "${jvmArgs[@]}" "${authlibArgs[@]}" "${agentArgs[@]}" "${argsFile}" "${programArgs[@]}"