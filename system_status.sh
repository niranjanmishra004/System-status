#!/bin/bash

# ===== Colors =====
RESET="\e[0m"
BOLD="\e[1m"

CYAN="\e[36m"
GREEN="\e[32m"
YELLOW="\e[33m"
MAGENTA="\e[35m"
WHITE="\e[37m"

echo -e "${BOLD}${CYAN}==============================${RESET}"
echo -e "${BOLD}${CYAN}      SYSTEM INFORMATION${RESET}"
echo -e "${BOLD}${CYAN}==============================${RESET}"
echo

### RAM INFORMATION ###
echo -e "${BOLD}🧠 RAM Usage:${RESET}"

read total used free <<< $(free -m | awk '/^Mem:/ {print $2, $3, $4}')

echo -e "${YELLOW}Total RAM :${RESET} ${GREEN}${total} MB${RESET}"
echo -e "${YELLOW}Used RAM  :${RESET} ${GREEN}${used} MB${RESET}"
echo -e "${YELLOW}Free RAM  :${RESET} ${GREEN}${free} MB${RESET}"

echo
echo -e "${WHITE}------------------------------${RESET}"
echo

### STORAGE INFORMATION ###
echo -e "${BOLD}💾 Disk Usage (Root Partition):${RESET}"

read dtotal dused dfree <<< $(df -h / | awk 'NR==2 {print $2, $3, $4}')

echo -e "${YELLOW}Total Disk :${RESET} ${GREEN}${dtotal}${RESET}"
echo -e "${YELLOW}Used Disk  :${RESET} ${GREEN}${dused}${RESET}"
echo -e "${YELLOW}Free Disk  :${RESET} ${GREEN}${dfree}${RESET}"

echo
echo -e "${BOLD}${CYAN}==============================${RESET}"

### DATE & TIME ###
echo -e "${MAGENTA}📅 Date & Time:${RESET} $(date '+%d %B %Y | %H:%M:%S')"
