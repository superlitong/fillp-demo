# About

This repository provides a demo of FillP, containing the executable files of a client and a server. FillP is a UDP-based full transport protocol implementation of [TACK](https://dl.acm.org/doi/abs/10.1145/3387514.3405850). A world-wide performance evaluation of FillP can be seen at the [Pantheon](https://pantheon.stanford.edu/) from Stanford University.

Please cite the papers as follows (or use this [bibtex record](./doc/bibtex.txt)).

- Tong Li, Kai Zheng, Ke Xu, Rahul Arvind Jadhav, Tao Xiong, Keith Winstein, Kun Tan. [TACK: Improving Wireless Transport Performance by Taming Acknowledgments](./doc/li2020tack.pdf). Annual conference of the ACM Special Interest Group on Data Communication on the applications, technologies, architectures, and protocols for computer communication (ACM SIGCOMM), pp. 15-30, 2020.

- Tong Li, Kai Zheng, Ke Xu, Rahul Arvind Jadhav, Tao Xiong, Keith Winstein, Kun Tan. [Revisiting Acknowledgment Mechanism for Transport Control: Modeling, Analysis, and Implementation](./doc/li2021revisiting.pdf). IEEE/ACM Transactions on Networking (TON), vol.29, no.6, pp. 2678-2692, 2021.

- Tong Li, Kai Zheng, Ke Xu. [Acknowledgment On Demand for Transport Control](./doc/li2021ack.pdf). IEEE Internet Computing, vol.25, no.2, pp. 109-115, 2021.


## 0. Clone and Setup


```
git clone https://github.com/superlitong/fillp-demo.git
```

```    
cd bin/client   or    cd bin/server
```

```
export LD_LIBRARY_PATH=./  (this should be done in both server and client folders to enable the path)
```


## 1. Buffer Configuration

The client and server are executable which are built in Ubuntu 14.04.5 LTS with gcc 4.8.4, and do not need to be built again. FillP does need any sysctl configuration to your system. That is, with default setting of your system, it works well. But before running FillP in the network with bandwidth of 10 Gbps, you can extend the sending/receiving buffer as follows: 

```
    sysctl -w net.ipv4.udp_mem="98304 268435456 268435456“
    sysctl -w net.core.wmem_max=268435456
```

## 2. Transfer Data Stream

```
    ./server -s server_ip -p server_port -r testcase001

    ./client -c server_ip -p server_port -r testcase001
```

For more details, use

```
client -H or server -H
```
