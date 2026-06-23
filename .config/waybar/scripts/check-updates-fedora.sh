#!/bin/bash
# Check for Fedora (dnf) and Dell firmware (fwupd) updates, output JSON for waybar

# --- DNF updates ---
dnf_updates=$(dnf check-update --quiet 2>/dev/null | grep -v "^$" | grep -v "^Last metadata")
dnf_count=$(echo "$dnf_updates" | grep -c '[^ ]')
dnf_list=""
if [ "$dnf_count" -gt 0 ]; then
    dnf_list=$(echo "$dnf_updates" | awk '{print $1}' | sort | tr '\n' '\r')
    dnf_list="${dnf_list%\\r}"
fi

# --- Firmware updates (fwupd / Dell) ---
fw_count=0
fw_list=""
if command -v fwupdmgr &>/dev/null; then
    fwupdmgr refresh --force >/dev/null 2>&1
    fw_updates=$(fwupdmgr get-updates 2>/dev/null | grep -E "^[^ ].*→")
    fw_count=$(echo "$fw_updates" | grep -c '[^ ]')
    if [ "$fw_count" -gt 0 ]; then
        fw_list=$(echo "$fw_updates" | sed 's/^[[:space:]]*//' | tr '\n' '\r')
        fw_list="${fw_list%\\r}"
    fi
fi

# --- Combine results ---
total=$((dnf_count + fw_count))

if [ "$total" -gt 0 ]; then
    tooltip=""
    if [ "$dnf_count" -gt 0 ]; then
        tooltip="📦 DNF ($dnf_count):\\r$dnf_list"
    fi
    if [ "$fw_count" -gt 0 ]; then
        [ -n "$tooltip" ] && tooltip="$tooltip\\r\\r"
        tooltip="${tooltip}🔧 Firmware ($fw_count):\\r$fw_list"
    fi

    notify-send -u normal -i software-update-available \
        "Mises à jour disponibles" \
        "$total mise(s) à jour (DNF: $dnf_count, Firmware: $fw_count)" 2>/dev/null

    echo "{\"text\": \"$total\", \"tooltip\": \"$total mise(s) à jour disponible(s):\\r$tooltip\", \"class\": \"updates-available\"}"
else
    echo '{"text": "0", "tooltip": "Système à jour", "class": "updated"}'
fi
