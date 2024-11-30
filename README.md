# Jarkom-Modul-5-IT21-2024

|Nama  | NRP |
|--|--|
| Nathan Kho Pancras | 5027231002 |
| Muhammad Andrean Rizq Prasetio | 5027231052 |

## Daftar Isi

- [Jarkom-Modul-5-IT21-2024](#jarkom-modul-5-it21-2024)
  - [Daftar Isi](#daftar-isi)
- [Misi 1: Memetakan Kota New Eridu](#misi-1-memetakan-kota-new-eridu)
  - [Soal 1: Topologi \& Subnetting](#soal-1-topologi--subnetting)
  - [Soal 2: VLSM](#soal-2-vlsm)
    - [Detail Subnetting](#detail-subnetting)
    - [Pembagian IP](#pembagian-ip)
  - [Soal 3: Set IP \& Routing](#soal-3-set-ip--routing)
    - [Set IP](#set-ip)
    - [Routing](#routing)
  - [Soal 4: Konfigurasi](#soal-4-konfigurasi)
- [Misi 2: Menemukan Jejak Sang Peretas](#misi-2-menemukan-jejak-sang-peretas)
  - [Soal 1](#soal-1)
  - [Soal 2](#soal-2)
  - [Soal 3](#soal-3)
  - [Soal 4](#soal-4)
  - [Soal 5](#soal-5)
  - [Soal 6](#soal-6)
  - [Soal 7](#soal-7)
  - [Soal 8](#soal-8)
- [Misi 3: Menangkap Burnice](#misi-3-menangkap-burnice)
  - [Soal 1](#soal-1-1)


# Misi 1: Memetakan Kota New Eridu

## Soal 1: Topologi & Subnetting

> Sebuah topologi sederhana menggambarkan jaringan New Eridu:

```
Keterangan:
    HDD: Berfungsi sebagai DNS Server.
    Fairy: Berfungsi sebagai DHCP Server.
    Web Servers: HIA, HollowZero.
    Client:
        Burnice: Memiliki 5 host.
        Lycaon: Memiliki 20 host.
        Policeboo: Memiliki 30 host.
        Caesar: Memiliki 50 host
        Ellen: Memiliki 100 host.
        Jane: Memiliki 200 host.
```

![alt text](assets/PembagianSubnet.png)

## Soal 2: VLSM

> Setelah membagi alamat IP menggunakan VLSM, gambarkan pohon subnet yang menunjukkan hierarki pembagian IP di jaringan New Eridu. Lingkari subnet-subnet yang akan dilewati dalam jaringan.

### Detail Subnetting

| Nama Subnet | Rute | Jumlah IP | Netmask |
|-------------|------|-----------|---------|
| A1          | NewEridu > SixStreet | 2 | /30 |
| A2          | NewEridu > SixStreet > RandomPlay > Fairy / HDD | 3 | /29 |
| A3          | NewEridu > SixStreet > Metro > ScootOutpost / OuterRing | 3 | /29 |
| A4          | NewEridu > SixStreet > Metro > OuterRing > SoC > Burnice / Caesar | 56 | /26 |
| A5          | NewEridu > SixStreet > Metro > ScootOutpost > HollowZero | 2 | /30 |
| A6          | NewEridu > LuminaSquare | 2 | /30 |
| A7          | NewEridu > LuminaSquare > PubSec > Jane / Policeboo | 231 | /24 |
| A8          | NewEridu > LuminaSquare > Ofc.Mewmew > HIA / BalletTwins | 3 | /29 |
| A9          | NewEridu > LuminaSquare > Ofc.Mewmew > BalletTwins > Victoria > Lycaon / Ellen | 121 | /25 |
| **Total**   |      | **423**   | **/23** |

### Pembagian IP

| Subnet | Network ID       | Netmask           | Broadcast       | Range IP                     |
|--------|-------------------|-------------------|-----------------|------------------------------|
| A1     | 192.245.1.220     | 255.255.255.252   | 192.245.1.223   | 192.245.1.221 - 192.245.1.222|
| A2     | 192.245.1.200     | 255.255.255.248   | 192.245.1.207   | 192.245.1.201 - 192.245.1.206|
| A3     | 192.245.1.208     | 255.255.255.248   | 192.245.1.215   | 192.245.1.209 - 192.245.1.214|
| A4     | 192.245.1.128     | 255.255.255.192   | 192.245.1.191   | 192.245.1.129 - 192.245.1.190|
| A5     | 192.245.1.224     | 255.255.255.252   | 192.245.1.227   | 192.245.1.225 - 192.245.1.226|
| A6     | 192.245.1.216     | 255.255.255.252   | 192.245.1.219   | 192.245.1.217 - 192.245.1.218|
| A7     | 192.245.0.0       | 255.255.255.0     | 192.245.0.255   | 192.245.0.1 - 192.245.0.254  |
| A8     | 192.245.1.192     | 255.255.255.248   | 192.245.1.199   | 192.245.1.193 - 192.245.1.198|
| A9     | 192.245.1.0       | 255.255.255.128   | 192.245.1.127   | 192.245.1.1 - 192.245.1.126  |

## Soal 3: Set IP & Routing

> Setelah pembagian IP selesai, buatlah konfigurasi rute untuk menghubungkan semua subnet dengan benar di jaringan New Eridu. Pastikan perangkat dapat saling terhubung.

**NOTE: Untuk konfigurasi IP dan routing dimasukkan ke /etc/network/interfaces atau di GNS3 > Configure > Edit network interfaces**

### Set IP

**NewEridu (Router)**

```bash
```

**SixStreet (Router)**

```bash
```

**Fairy (DHCP Server)**

```bash
```

**HDD (DNS Server)**

```bash
```

**Metro (Router)**

```bash
```

**OuterRing (Router)**

```bash
```

**Burnice (Client)**

```bash
```

**Caesar (Client)**

```bash
```

**ScootOutpost (Router)**

```bash
```

**HollowZero (Webserver)**

```bash
```

**LuminaSquare (Router)**

```bash
```

**Jane - 200 Host (Client)**

```bash
```

**Policeboo - 30 Host (Client)**

```bash
```

**HIA (Webserver)**

```bash
```

**BalletTwins (Router)**

```bash
```

**Ellen - 100 Host (Client)**

```bash
```

**Lycaon - 20 Host (Client)**

```bash
```

### Routing

**NewEridu (Router)**



**SixStreet (Router)**



**OuterRing (Router)**



**ScootOutpost (Router)**



**BalletTwins (Router)**



## Soal 4: Konfigurasi

# Misi 2: Menemukan Jejak Sang Peretas

## Soal 1

## Soal 2

## Soal 3

## Soal 4

## Soal 5

## Soal 6

## Soal 7

## Soal 8

# Misi 3: Menangkap Burnice

## Soal 1