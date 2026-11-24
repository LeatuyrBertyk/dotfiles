function ipmac --description "Check permanent and virtual MAC & IP"
    set -l wifi_if (nmcli -t -f DEVICE,TYPE device | string match -r "^[^:]+:wifi\$" | string split -f1 ":")
    set wifi_if $wifi_if[1]
    if test -z "$wifi_if"
        echo "Error: Wifi not found."
        return 1
    end

    set -l wg_conn (nmcli -t -f NAME,TYPE connection show --active | string match -r "^[^:]+:wireguard\$" | string split -f1 ":")
    set wg_conn $wg_conn[1]

    set -l vmac (cat /sys/class/net/$wifi_if/address 2>/dev/null)
    set -l pmac_match (ip link show $wifi_if | string match -r "permaddr ([0-9a-fA-F:]+)")
    set -l pmac $pmac_match[2]
    if test -z "$pmac"
        set -l eth_match (ethtool -P $wifi_if 2>/dev/null | string match -r "([0-9a-fA-F:]{17})")
        set pmac $eth_match[1]
    end
    if test -z "$pmac"
        set pmac "$vmac (Yet change MAC)"
    end

    set -l lip (ip -4 -brief addr show $wifi_if | string match -r "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/[0-9]+")
    test -z "$lip"; and set lip "Yet connected to Wi-Fi"

    set -l rip ""
    set -l vip ""
    if test -n "$wg_conn"
        set vip (curl -s --max-time 5 ipinfo.io/ip)
        nmcli connection down "$wg_conn" >/dev/null 2>&1
        sleep 1
        set rip (curl -s --max-time 5 ipinfo.io/ip)
        nmcli connection up "$wg_conn" >/dev/null 2>&1
    else
        set rip (curl -s --max-time 5 ipinfo.io/ip)
        set vip "Yet turn on VPN"
    end

    printf "MAC (permanent): %s\n" "$pmac"
    printf "MAC (virtual):   %s\n" "$vmac"
    printf "IP LAN:          %s\n" "$lip"
    printf "IP (permanent):  %s\n" "$rip"
    printf "IP (virtual):    %s\n" "$vip"
end
