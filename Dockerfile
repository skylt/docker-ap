FROM alpine

LABEL maintainer="brendan@lse.epita.fr"

RUN apk add --no-cache bash hostapd iptables dhcp iproute2 iw
RUN echo "" > /var/lib/dhcp/dhcpd.leases
ADD wlanstart.sh /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]
