#!/bin/bash

# ===== Colors =====

RESET="\e[0m"
BOLD="\e[1m"

CYAN="\e[36m"
GREEN="\e[32m"
YELLOW="\e[33m"
MAGENTA="\e[35m"
RED="\e[31m"
WHITE="\e[37m"

# ===== HEADER =====

clear
echo -e "${BOLD}${CYAN}=====================================${RESET}"
echo -e "${BOLD}${CYAN}     SYSTEM MONITOR DASHBOARD${RESET}"
echo -e "${BOLD}${CYAN}=====================================${RESET}"
echo

# ===== DATE & TIME =====

echo -e "${MAGENTA}📅 Date & Time:${RESET} $(date '+%d %B %Y | %H:%M:%S')"

# ===== OS INFO =====

echo
echo -e "${BOLD}🖥️ OS Information:${RESET}"

os=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
kernel=$(uname -r)

echo -e "${YELLOW}OS      :${RESET} ${GREEN}${os}${RESET}"
echo -e "${YELLOW}Kernel  :${RESET} ${GREEN}${kernel}${RESET}"

# ===== UPTIME =====

echo
echo -e "${BOLD}⏳ Uptime:${RESET}"
uptime -p

echo -e "${BOLD}📊 Load Average:${RESET}"
load=$(uptime | awk -F'load average:' '{ print $2 }')
echo -e "${GREEN}${load}${RESET}"

# ===== CPU USAGE =====

echo
echo -e "${BOLD}⚙️ CPU Usage:${RESET}"

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
echo -e "${YELLOW}CPU Load :${RESET} ${GREEN}${cpu_usage}%${RESET}"

# ===== RAM INFO =====

echo
echo -e "${BOLD}🧠 RAM Usage:${RESET}"

read total used free <<< $(free -m | awk '/^Mem:/ {print $2, $3, $4}')

echo -e "${YELLOW}Total RAM :${RESET} ${GREEN}${total} MB${RESET}"
echo -e "${YELLOW}Used RAM  :${RESET} ${GREEN}${used} MB${RESET}"
echo -e "${YELLOW}Free RAM  :${RESET} ${GREEN}${free} MB${RESET}"

# ===== DISK INFO (ROOT ONLY - CLEAN) =====

echo
echo -e "${BOLD}💾 Disk Usage (Root Partition):${RESET}"

read dtotal dused dfree <<< $(df -h / | awk 'NR==2 {print $2, $3, $4}')

echo -e "${YELLOW}Total Disk :${RESET} ${GREEN}${dtotal}${RESET}"
echo -e "${YELLOW}Used Disk  :${RESET} ${GREEN}${dused}${RESET}"
echo -e "${YELLOW}Free Disk  :${RESET} ${GREEN}${dfree}${RESET}"

# Disk %
disk_usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
echo -e "${YELLOW}Usage      :${RESET} ${GREEN}${disk_usage}%${RESET}"

# Progress Bar

echo
echo -e "${WHITE}------------------------------${RESET}"

# ===== NETWORK =====

echo
echo -e "${BOLD}🌐 Network Info:${RESET}"

ip=$(hostname -I | awk '{print $1}')
echo -e "${YELLOW}IP Address:${RESET} ${GREEN}${ip}${RESET}"

# ===== TOP PROCESSES =====

echo
echo -e "${BOLD}🔥 Top 5 Processes (by Memory):${RESET}"

ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6

# ===== ALERT SYSTEM =====

echo
echo -e "${BOLD}🚨 Alerts:${RESET}"

alert_flag=0

# CPU Alert
cpu_int=${cpu_usage%.*}
if [ "$cpu_int" -gt 80 ]; then
  echo -e "${RED}High CPU Usage! (${cpu_usage}%)${RESET}"
  alert_flag=1
fi

# RAM Alert
ram_usage_percent=$((used * 100 / total))
if [ "$ram_usage_percent" -gt 80 ]; then
  echo -e "${RED}High RAM Usage! (${ram_usage_percent}%)${RESET}"
  alert_flag=1
fi

# Disk Alert
if [ "$disk_usage" -gt 85 ]; then
  echo -e "${RED}Disk Almost Full! (${disk_usage}%)${RESET}"
  alert_flag=1
fi

# No Alerts
if [ "$alert_flag" -eq 0 ]; then
  echo -e "${GREEN}All systems running normally ✔${RESET}"
fi

# ===== FOOTER =====

echo
echo -e "${BOLD}${CYAN}=====================================${RESET}"
echo -e "${BOLD}${CYAN}        END OF REPORT${RESET}"
echo -e "${BOLD}${CYAN}=====================================${RESET}"
